import 'package:clock/clock.dart';
import 'package:fake_async/fake_async.dart';
import 'package:flutter_architecture_blueprint/core/data/repository/todo/fake_todo_repository.dart';
import 'package:flutter_architecture_blueprint/core/data/repository/todo/todo_repository.dart';
import 'package:flutter_architecture_blueprint/core/data/repository/todo/todo_repository_impl.dart';
import 'package:flutter_architecture_blueprint/core/domain/model/editable_user_task.dart';
import 'package:flutter_architecture_blueprint/core/util/alert_state.dart';
import 'package:flutter_architecture_blueprint/feature/todo/edit_task/edit_task_contract.dart';
import 'package:flutter_architecture_blueprint/feature/todo/edit_task/edit_task_notifier.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rxdart/rxdart.dart';

void main() {
  late BehaviorSubject<FakeTodoRepositoryState> fakeTodoState;
  late FakeTodoRepository todoRepository;
  late ProviderContainer container;
  notifierProvider() =>
      editTaskNotifierProvider(container.read(editTaskArgsProvider));
  uiState() => container.read(notifierProvider());
  effect() => container.read(editTaskEffectProvider);

  final sampleEditableTask = EditableUserTask.create().copyWith(
    title: 'title1',
    createdAt: clock.now(),
  );
  const generalErrorAlertState = AlertState.okDialog(message: 'エラー');
  const notFoundAlertState = AlertState.okDialog(message: 'タスクが見つかりませんでした');

  setUp(() {
    fakeTodoState = BehaviorSubject.seeded(const FakeTodoRepositoryState());
    todoRepository = FakeTodoRepository.from(fakeTodoState);
  });

  tearDown(() {
    container.dispose();
  });

  void buildContainer({
    required EditableUserTask? argument,
  }) {
    if (argument != null) {
      fakeTodoState
          .add(fakeTodoState.value.copyWith(taskList: [argument.toUserTask()]));
    }
    container = ProviderContainer(overrides: [
      todoRepositoryProvider.overrideWithValue(todoRepository),
      editTaskArgsProvider
          .overrideWith((ref) => argument ?? EditableUserTask.create()),
    ]);
  }

  group('Initial State', () {
    test('Cannot add new task', () async {
      buildContainer(argument: null);
      final uiStateSubscription =
          container.listen(notifierProvider(), (previous, next) {});
      addTearDown(uiStateSubscription.close);

      expect(uiState().isNewTask, true);
      expect(uiState().isSubmitButtonEnabled, false);
    });

    test('Can update a task exists', () async {
      buildContainer(argument: sampleEditableTask);
      final uiStateSubscription =
          container.listen(notifierProvider(), (previous, next) {});
      addTearDown(uiStateSubscription.close);

      expect(uiState().isNewTask, false);
      expect(uiState().isSubmitButtonEnabled, true);
    });
  });

  group('Modify Task', () {
    test('Edit title, description, isCompleted for new task', () async {
      buildContainer(argument: null);
      final notifier = container.read(notifierProvider().notifier);
      final uiStateSubscription =
          container.listen(notifierProvider(), (previous, next) {});
      addTearDown(uiStateSubscription.close);

      expect(uiState().isNewTask, true);
      expect(uiState().isSubmitButtonEnabled, false);

      // title

      const title = 'title in test';
      notifier.send(const EditTaskAction.onTitleChanged(title));
      expect(uiState().item.title, title);
      expect(uiState().isSubmitButtonEnabled, true);

      // description

      const description = 'description in test';
      notifier.send(const EditTaskAction.onDescriptionChanged(description));
      expect(uiState().item.description, description);

      // isCompleted

      expect(uiState().item.isCompleted, false);
      notifier.send(const EditTaskAction.completeButtonTapped());
      expect(uiState().item.isCompleted, true);
      notifier.send(const EditTaskAction.uncompleteButtonTapped());
      expect(uiState().item.isCompleted, false);
    });

    test('Edit title, description, isCompleted for a task exists', () async {
      buildContainer(argument: sampleEditableTask);
      final notifier = container.read(notifierProvider().notifier);
      final uiStateSubscription =
          container.listen(notifierProvider(), (previous, next) {});
      addTearDown(uiStateSubscription.close);

      expect(uiState().isNewTask, false);
      expect(uiState().isSubmitButtonEnabled, true);

      // title

      const title = 'title in test';
      notifier.send(const EditTaskAction.onTitleChanged(title));
      expect(uiState().item.title, title);
      expect(uiState().isSubmitButtonEnabled, true);

      // description

      const description = 'description in test';
      notifier.send(const EditTaskAction.onDescriptionChanged(description));
      expect(uiState().item.description, description);

      // isCompleted

      expect(uiState().item.isCompleted, false);
      notifier.send(const EditTaskAction.completeButtonTapped());
      expect(uiState().item.isCompleted, true);
      notifier.send(const EditTaskAction.uncompleteButtonTapped());
      expect(uiState().item.isCompleted, false);
    });

    test('Request Add new task', () {
      fakeAsync((fakeAsync) {
        buildContainer(argument: null);
        final notifier = container.read(notifierProvider().notifier);
        final uiStateSubscription =
            container.listen(notifierProvider(), (previous, next) {});
        addTearDown(uiStateSubscription.close);

        expect(uiState().isNewTask, true);
        expect(uiState().isSubmitButtonEnabled, false);

        const title = 'title in test';
        const description = 'description in test';
        notifier.send(const EditTaskAction.onTitleChanged(title));
        notifier.send(const EditTaskAction.onDescriptionChanged(description));
        expect(uiState().item.title, title);
        expect(uiState().item.description, description);

        notifier.send(const EditTaskAction.addButtonTapped());
        fakeAsync.flushMicrotasks();
        expect(effect(), const EditTaskEffect.close());
        expect(
          todoRepository.fakeState.value.taskList.first,
          uiState().item.toUserTask(),
        );
      }, initialTime: DateTime.now());
    });

    test('Request Update a task exists', () {
      fakeAsync((fakeAsync) {
        buildContainer(argument: sampleEditableTask);
        final notifier = container.read(notifierProvider().notifier);
        final uiStateSubscription =
            container.listen(notifierProvider(), (previous, next) {});
        addTearDown(uiStateSubscription.close);

        expect(uiState().isNewTask, false);
        expect(uiState().isSubmitButtonEnabled, true);

        const title = 'title in test';
        const description = 'description in test';
        notifier.send(const EditTaskAction.onTitleChanged(title));
        notifier.send(const EditTaskAction.onDescriptionChanged(description));
        expect(uiState().item.title, title);
        expect(uiState().item.description, description);

        notifier.send(const EditTaskAction.updateButtonTapped());
        fakeAsync.flushMicrotasks();
        expect(effect(), const EditTaskEffect.close());
        expect(
          todoRepository.fakeState.value.taskList.first,
          uiState().item.toUserTask().copyWith(updatedAt: clock.now()),
        );
      }, initialTime: DateTime.now());
    });
  });

  group('Error handling', () {
    test('Handle errors for new task', () async {
      buildContainer(argument: null);
      final notifier = container.read(notifierProvider().notifier);
      final uiStateSubscription =
          container.listen(notifierProvider(), (previous, next) {});
      addTearDown(uiStateSubscription.close);

      const title = 'title in test';
      const description = 'description in test';
      notifier.send(const EditTaskAction.onTitleChanged(title));
      notifier.send(const EditTaskAction.onDescriptionChanged(description));
      expect(uiState().item.title, title);
      expect(uiState().item.description, description);

      // Failed Request

      todoRepository.handler.addTask = (task) async {
        throw TodoRepositoryException.other(Exception());
      };

      notifier.send(const EditTaskAction.addButtonTapped());
      await container.pump();
      expect(
        effect(),
        const EditTaskEffect.showAlert(state: generalErrorAlertState),
      );
    });

    test('Handle errors for a task exists', () async {
      buildContainer(argument: sampleEditableTask);
      final notifier = container.read(notifierProvider().notifier);
      final uiStateSubscription =
          container.listen(notifierProvider(), (previous, next) {});
      addTearDown(uiStateSubscription.close);

      expect(uiState().isNewTask, false);
      expect(uiState().isSubmitButtonEnabled, true);

      const title = 'title in test';
      const description = 'description in test';
      notifier.send(const EditTaskAction.onTitleChanged(title));
      notifier.send(const EditTaskAction.onDescriptionChanged(description));
      expect(uiState().item.title, title);
      expect(uiState().item.description, description);

      // Not Found

      todoRepository.handler.updateTask = (task) async {
        throw const TodoRepositoryException.taskNotFound();
      };

      notifier.send(const EditTaskAction.updateButtonTapped());
      await container.pump();
      expect(
        effect(),
        const EditTaskEffect.showAlert(state: notFoundAlertState),
      );
      notifier.consume();

      // Failed Request

      todoRepository.handler.updateTask = (task) async {
        throw TodoRepositoryException.other(Exception());
      };

      notifier.send(const EditTaskAction.updateButtonTapped());
      await container.pump();
      expect(
        effect(),
        const EditTaskEffect.showAlert(state: generalErrorAlertState),
      );
    });
  });
}
