import 'package:collection/collection.dart';
import 'package:flutter_architecture_blueprint/core/data/repository/todo/fake_todo_repository.dart';
import 'package:flutter_architecture_blueprint/core/data/repository/todo/todo_repository.dart';
import 'package:flutter_architecture_blueprint/core/data/repository/todo/todo_repository_impl.dart';
import 'package:flutter_architecture_blueprint/core/domain/model/editable_user_task.dart';
import 'package:flutter_architecture_blueprint/core/model/user_task.dart';
import 'package:flutter_architecture_blueprint/core/util/alert_state.dart';
import 'package:flutter_architecture_blueprint/feature/todo/task_list/task_list_contract.dart';
import 'package:flutter_architecture_blueprint/feature/todo/task_list/task_list_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rxdart/rxdart.dart';
import 'package:uuid/uuid.dart';

void main() {
  late BehaviorSubject<FakeTodoRepositoryState> fakeTodoState;
  late FakeTodoRepository todoRepository;
  late ProviderContainer container;
  buildAccessors() {
    final uiStateSubscription =
        container.listen(taskListNotifierProvider, (previous, next) {});
    addTearDown(uiStateSubscription.close);
    return (
      container.read(taskListNotifierProvider.notifier),
      () => container.read(taskListNotifierProvider),
      () => container.read(taskListEffectProvider),
    );
  }

  const uuid = Uuid();

  final sampleTaskList = [
    UserTask(id: uuid.v4(), title: 'title1', createdAt: DateTime(2024, 3, 3)),
    UserTask(id: uuid.v4(), title: 'title2', createdAt: DateTime(2024, 3, 4)),
    UserTask(id: uuid.v4(), title: 'title3', createdAt: DateTime(2024, 3, 5)),
  ];
  const generalErrorAlertState = AlertState.okDialog(message: 'エラー');
  const notFoundAlertState = AlertState.okDialog(message: 'タスクが見つかりませんでした');

  setUp(() {
    fakeTodoState = BehaviorSubject.seeded(const FakeTodoRepositoryState());
    todoRepository = FakeTodoRepository.from(fakeTodoState);
    container = ProviderContainer(overrides: [
      todoRepositoryProvider.overrideWithValue(todoRepository),
    ]);
    todoRepository.handler.fetchTaskList = () async {
      fakeTodoState.add(fakeTodoState.value.copyWith(taskList: sampleTaskList));
    };
  });

  tearDown(() {
    container.dispose();
  });

  group('Fetch task list', () {
    test('When OnAppear, fetched empty task list', () async {
      final (notifier, uiState, _) = buildAccessors();

      todoRepository.handler.fetchTaskList = () async {};

      await notifier.send(const TaskListAction.onAppear());
      expect(uiState().taskList.isEmpty, true);
    });

    test('When OnAppear, fetched task list (sample list)', () async {
      final (notifier, uiState, _) = buildAccessors();

      await notifier.send(const TaskListAction.onAppear());
      expect(
        uiState().taskList,
        sampleTaskList.map((t) => t.toEditable()),
      );
    });
  });

  group('Navigation', () {
    test('Tap NewTaskButton, navigate detail', () async {
      final (notifier, uiState, effect) = buildAccessors();

      todoRepository.handler.fetchTaskList = () async {};

      await notifier.send(const TaskListAction.onAppear());
      expect(uiState().taskList.isEmpty, true);

      await notifier.send(const TaskListAction.newTaskButtonTapped());
      expect(
        effect(),
        const TaskListEffect.goDetail(task: null),
      );
    });

    test('Tap a task, navigate detail', () async {
      final (notifier, uiState, effect) = buildAccessors();

      await notifier.send(const TaskListAction.onAppear());
      expect(
        uiState().taskList,
        sampleTaskList.map((t) => t.toEditable()),
      );

      final target = uiState().taskList.first;
      await notifier.send(TaskListAction.taskTapped(target));
      expect(
        effect(),
        TaskListEffect.goDetail(task: target),
      );
    });
  });

  group('Modify Task', () {
    test('Tap ToggleButton, toggle isCompleted', () async {
      final (notifier, uiState, _) = buildAccessors();

      await notifier.send(const TaskListAction.onAppear());
      expect(
        uiState().taskList,
        sampleTaskList.map((t) => t.toEditable()),
      );

      final target = uiState().taskList.first;
      await notifier.send(TaskListAction.toggleIsCompleted(target));
      expect(
        uiState().taskList.first.isCompleted,
        !target.isCompleted,
      );

      final target2 = uiState().taskList.first;
      await notifier.send(TaskListAction.toggleIsCompleted(target2));
      expect(
        uiState().taskList.first.isCompleted,
        !target2.isCompleted,
      );
    });

    test('Swipe a task, remove it', () async {
      final (notifier, uiState, _) = buildAccessors();

      await notifier.send(const TaskListAction.onAppear());
      expect(
        uiState().taskList,
        sampleTaskList.map((t) => t.toEditable()),
      );

      final target = uiState().taskList.first;
      await notifier.send(TaskListAction.onTaskSwiped(target));
      expect(
        uiState().taskList.none((t) => t.id == target.id),
        true,
      );
    });
  });

  group('Error handling', () {
    test('Handle errors for fetch list', () async {
      final (notifier, uiState, effect) = buildAccessors();

      todoRepository.handler.fetchTaskList = () async {
        throw TodoRepositoryException.other(Exception());
      };

      await notifier.send(const TaskListAction.onAppear());
      expect(uiState().taskList.isEmpty, true);
      expect(
        effect(),
        const TaskListEffect.showAlert(state: generalErrorAlertState),
      );
    });

    test('Handle errors for toggle isCompleted', () async {
      final (notifier, uiState, effect) = buildAccessors();

      await notifier.send(const TaskListAction.onAppear());
      expect(
        uiState().taskList,
        sampleTaskList.map((t) => t.toEditable()),
      );

      // Not Found

      todoRepository.handler.updateTask = (task) async {
        throw const TodoRepositoryException.taskNotFound();
      };

      final taskNotFound = uiState().taskList.first.copyWith(id: uuid.v4());
      await notifier.send(TaskListAction.toggleIsCompleted(taskNotFound));
      expect(
        effect(),
        const TaskListEffect.showAlert(state: notFoundAlertState),
      );
      notifier.consume();

      // Failed Request

      todoRepository.handler.updateTask = (task) async {
        throw TodoRepositoryException.other(Exception());
      };

      final target = uiState().taskList.first;
      await notifier.send(TaskListAction.toggleIsCompleted(target));
      expect(
        effect(),
        const TaskListEffect.showAlert(state: generalErrorAlertState),
      );
    });

    test('Handle errors for remove task', () async {
      final (notifier, uiState, effect) = buildAccessors();

      await notifier.send(const TaskListAction.onAppear());
      expect(
        uiState().taskList,
        sampleTaskList.map((t) => t.toEditable()),
      );

      // Not Found

      todoRepository.handler.removeTask = (id) async {
        throw const TodoRepositoryException.taskNotFound();
      };

      final target = uiState().taskList.first;
      await notifier.send(TaskListAction.onTaskSwiped(target));
      expect(
        effect(),
        const TaskListEffect.showAlert(state: notFoundAlertState),
      );
      notifier.consume();

      // Failed Request

      todoRepository.handler.removeTask = (id) async {
        throw TodoRepositoryException.other(Exception());
      };

      final target2 = uiState().taskList.first;
      await notifier.send(TaskListAction.onTaskSwiped(target2));
      expect(
        effect(),
        const TaskListEffect.showAlert(state: generalErrorAlertState),
      );
    });
  });
}
