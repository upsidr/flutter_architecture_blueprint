import 'package:flutter_architecture_blueprint/core/data/repository/todo/todo_repository.dart'
    as todo_repository;
import 'package:flutter_architecture_blueprint/core/data/repository/todo/todo_repository_impl.dart';
import 'package:flutter_architecture_blueprint/core/domain/model/editable_user_task.dart';
import 'package:flutter_architecture_blueprint/core/util/alert_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_task_usecase.freezed.dart';

final editTaskUseCaseProvider = Provider.autoDispose((ref) {
  return EditTaskUseCase(ref.watch(todoRepositoryProvider));
});

class EditTaskUseCase {
  const EditTaskUseCase(this._todoRepository);

  final todo_repository.TodoRepository _todoRepository;

  Future<void> addTask(EditableUserTask task) async {
    assert(task.title != null);
    assert(task.description != null);
    try {
      _todoRepository.addTask(task: task.toUserTask());
    } on todo_repository.Other catch (_) {
      throw EditTaskUseCaseException.alert(state: _sampleErrorState());
    }
  }

  Future<void> toggleIsCompleted(EditableUserTask task) async {
    final taskUpdated = task.copyWith(isCompleted: !task.isCompleted);
    try {
      _todoRepository.updateTask(task: taskUpdated.toUserTask());
    } on todo_repository.TaskNotFound catch (_) {
      throw EditTaskUseCaseException.alert(state: _itemNotFoundState());
    } on todo_repository.Other catch (_) {
      throw EditTaskUseCaseException.alert(state: _sampleErrorState());
    }
  }

  Future<void> deleteTask({required String id}) async {
    try {
      _todoRepository.removeTask(id: id);
    } on todo_repository.TaskNotFound catch (_) {
      throw EditTaskUseCaseException.alert(state: _itemNotFoundState());
    } on todo_repository.Other catch (_) {
      throw EditTaskUseCaseException.alert(state: _sampleErrorState());
    }
  }

  AlertState _itemNotFoundState() =>
      const AlertState.okDialog(message: 'タスクが見つかりませんでした');
  AlertState _sampleErrorState() => const AlertState.okDialog(message: 'エラー');
}

@freezed
sealed class EditTaskUseCaseException with _$EditTaskUseCaseException {
  const factory EditTaskUseCaseException.alert({
    required AlertState state,
  }) = Alert;
}
