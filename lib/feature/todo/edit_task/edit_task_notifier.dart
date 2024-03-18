import 'package:clock/clock.dart';
import 'package:flutter_architecture_blueprint/core/domain/model/editable_user_task.dart';
import 'package:flutter_architecture_blueprint/core/domain/todo/edit_task_usecase.dart'
    as edit_task;
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'edit_task_contract.dart';

part 'edit_task_notifier.g.dart';

final editTaskArgsProvider =
    StateProvider<EditableUserTask>((_) => throw UnimplementedError());

final editTaskEffectProvider =
    StateProvider((ref) => const EditTaskEffect.none());

@riverpod
class EditTaskNotifier extends _$EditTaskNotifier implements EditTaskContract {
  edit_task.EditTaskUseCase get _editTaskUseCase =>
      ref.read(edit_task.editTaskUseCaseProvider);

  @override
  EditTaskUiState build(EditableUserTask task) {
    return EditTaskUiState(item: task);
  }

  @override
  void consume() {
    // Mark Effect as completed.
    _updateEffect(const EditTaskEffect.none());
  }

  @override
  Future<void> send(EditTaskAction action) async {
    // Handling view events here.
    switch (action) {
      case OnTitleChanged():
        state = state.copyWith.item(title: action.newValue);
      case OnDescriptionChanged():
        state = state.copyWith.item(description: action.newValue);
      case CompleteButtonTapped():
        state = state.copyWith.item(isCompleted: true);
      case UncompleteButtonTapped():
        state = state.copyWith.item(isCompleted: false);
      case AddButtonTapped():
        assert(state.isSubmitButtonEnabled);
        assert(state.isNewTask);
        try {
          await _editTaskUseCase.addTask(state.item);
          _updateEffect(const EditTaskEffect.close());
        } on edit_task.Alert catch (e) {
          _updateEffect(EditTaskEffect.showAlert(state: e.state));
        }
      case UpdateButtonTapped():
        assert(state.isSubmitButtonEnabled);
        assert(!state.isNewTask);
        final taskWithUpdatedAt = state.item.copyWith(updatedAt: clock.now());
        try {
          await _editTaskUseCase.updateTask(taskWithUpdatedAt);
          _updateEffect(const EditTaskEffect.close());
        } on edit_task.Alert catch (e) {
          _updateEffect(EditTaskEffect.showAlert(state: e.state));
        }
      case DeleteButtonTapped():
        assert(!state.isNewTask);
        try {
          await _editTaskUseCase.deleteTask(id: state.item.id);
          _updateEffect(const EditTaskEffect.close());
        } on edit_task.Alert catch (e) {
          _updateEffect(EditTaskEffect.showAlert(state: e.state));
        }
    }
  }

  _updateEffect(EditTaskEffect effect) =>
      ref.read(editTaskEffectProvider.notifier).update((state) => effect);
}
