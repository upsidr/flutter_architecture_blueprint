import 'package:clock/clock.dart';
import 'package:collection/collection.dart';
import 'package:fake_async/fake_async.dart';
import 'package:flutter_architecture_blueprint/core/data/repository/todo/fake_todo_repository.dart';
import 'package:flutter_architecture_blueprint/core/data/repository/todo/todo_repository.dart';
import 'package:flutter_architecture_blueprint/core/domain/model/editable_user_task.dart';
import 'package:flutter_architecture_blueprint/core/util/alert_state.dart';
import 'package:flutter_architecture_blueprint/core/util/stream_extensions.dart';
import 'package:flutter_architecture_blueprint/feature/todo/edit_task/edit_task_contract.dart';
import 'package:flutter_architecture_blueprint/feature/todo/edit_task/edit_task_notifier.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rxdart/rxdart.dart';

void main() {
  late BehaviorSubject<FakeTodoRepositoryState> fakeTodoState;
  late FakeTodoRepository todoRepository;
  late ProviderContainer container;
  late EditableUserTask? task;
  buildAccessors({
    required EditableUserTask? argument,
  }) {
    if (argument != null) {
      fakeTodoState
          .update((value) => value.copyWith(taskList: [argument.toUserTask()]));
    }
    task = argument;

    final notifierProvider =
        editTaskNotifierProvider(container.read(editTaskArgsProvider));
    final subscription = container.listen(notifierProvider, (_, __) {});
    addTearDown(subscription.close);

    return (
      container.read(notifierProvider.notifier),
      () => container.read(notifierProvider),
      () => container.read(editTaskEffectProvider),
    );
  }

  final sampleEditableTask = EditableUserTask.create().copyWith(
    title: 'title1',
    createdAt: clock.now(),
  );
  const generalErrorAlertState = AlertState.okDialog(message: 'Error');
  const notFoundAlertState = AlertState.okDialog(message: 'Not found');

  setUp(() {
    fakeTodoState = BehaviorSubject.seeded(const FakeTodoRepositoryState());
    todoRepository = FakeTodoRepository.from(fakeTodoState);
    container = ProviderContainer(overrides: [
      todoRepositoryProvider.overrideWithValue(todoRepository),
      editTaskArgsProvider
          .overrideWith((ref) => task ?? EditableUserTask.create()),
    ]);
  });

  tearDown(() => container.dispose());

  group('Initial State', () {
    test('Cannot add new task', () async {
      final (_, uiState, _) = buildAccessors(argument: null);

      expect(uiState().isNewTask, true);
      expect(uiState().isSubmitButtonEnabled, false);
    });

    test('Can update a task exists', () async {
      final (_, uiState, _) = buildAccessors(argument: sampleEditableTask);

      expect(uiState().isNewTask, false);
      expect(uiState().isSubmitButtonEnabled, true);
    });
  });

  group('Modify Task', () {
    test('Edit title, description, isCompleted for new task', () async {
      final (notifier, uiState, _) = buildAccessors(argument: null);

      expect(uiState().isNewTask, true);
      expect(uiState().isSubmitButtonEnabled, false);

      // title

      const title = 'title in test';
      await notifier.send(const EditTaskAction.onTitleChanged(title));
      expect(uiState().item.title, title);
      expect(uiState().isSubmitButtonEnabled, true);

      // description

      const description = 'description in test';
      await notifier
          .send(const EditTaskAction.onDescriptionChanged(description));
      expect(uiState().item.description, description);

      // isCompleted

      expect(uiState().item.isCompleted, false);
      await notifier.send(const EditTaskAction.completeButtonTapped());
      expect(uiState().item.isCompleted, true);
      await notifier.send(const EditTaskAction.uncompleteButtonTapped());
      expect(uiState().item.isCompleted, false);
    });

    test('Edit title, description, isCompleted for a task exists', () async {
      final (notifier, uiState, _) =
          buildAccessors(argument: sampleEditableTask);

      expect(uiState().isNewTask, false);
      expect(uiState().isSubmitButtonEnabled, true);

      // title

      const title = 'title in test';
      await notifier.send(const EditTaskAction.onTitleChanged(title));
      expect(uiState().item.title, title);
      expect(uiState().isSubmitButtonEnabled, true);

      // description

      const description = 'description in test';
      await notifier
          .send(const EditTaskAction.onDescriptionChanged(description));
      expect(uiState().item.description, description);

      // isCompleted

      expect(uiState().item.isCompleted, false);
      await notifier.send(const EditTaskAction.completeButtonTapped());
      expect(uiState().item.isCompleted, true);
      await notifier.send(const EditTaskAction.uncompleteButtonTapped());
      expect(uiState().item.isCompleted, false);
    });

    test('Delete a task exists', () async {
      final (notifier, uiState, effect) =
          buildAccessors(argument: sampleEditableTask);

      expect(uiState().isNewTask, false);
      expect(uiState().isSubmitButtonEnabled, true);
      expect(
        todoRepository.fakeState.value.taskList
            .none((t) => t.id == sampleEditableTask.id),
        false,
      );

      await notifier.send(const EditTaskAction.deleteButtonTapped());
      expect(effect(), const EditTaskEffect.close());
      expect(
        todoRepository.fakeState.value.taskList
            .none((t) => t.id == sampleEditableTask.id),
        true,
      );
    });

    test('Request Add new task', () {
      fakeAsync((fakeAsync) {
        final (notifier, uiState, effect) = buildAccessors(argument: null);

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
        final (notifier, uiState, effect) =
            buildAccessors(argument: sampleEditableTask);

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
      final (notifier, uiState, effect) = buildAccessors(argument: null);

      const title = 'title in test';
      const description = 'description in test';
      await notifier.send(const EditTaskAction.onTitleChanged(title));
      await notifier
          .send(const EditTaskAction.onDescriptionChanged(description));
      expect(uiState().item.title, title);
      expect(uiState().item.description, description);

      // Failed Request

      todoRepository.handler.addTask =
          (task) async => throw TodoRepositoryException.other(Exception());

      await notifier.send(const EditTaskAction.addButtonTapped());
      expect(
        effect(),
        const EditTaskEffect.showAlert(state: generalErrorAlertState),
      );
    });

    test('Handle errors for a task exists', () async {
      final (notifier, uiState, effect) =
          buildAccessors(argument: sampleEditableTask);

      expect(uiState().isNewTask, false);
      expect(uiState().isSubmitButtonEnabled, true);

      const title = 'title in test';
      const description = 'description in test';
      await notifier.send(const EditTaskAction.onTitleChanged(title));
      await notifier
          .send(const EditTaskAction.onDescriptionChanged(description));
      expect(uiState().item.title, title);
      expect(uiState().item.description, description);

      // Not Found

      todoRepository.handler.updateTask =
          (task) async => throw const TodoRepositoryException.taskNotFound();

      await notifier.send(const EditTaskAction.updateButtonTapped());
      expect(
        effect(),
        const EditTaskEffect.showAlert(state: notFoundAlertState),
      );
      notifier.consume();

      // Failed Request

      todoRepository.handler.updateTask =
          (task) async => throw TodoRepositoryException.other(Exception());

      await notifier.send(const EditTaskAction.updateButtonTapped());
      expect(
        effect(),
        const EditTaskEffect.showAlert(state: generalErrorAlertState),
      );
    });
  });
}
