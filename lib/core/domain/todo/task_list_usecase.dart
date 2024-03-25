import 'package:flutter_architecture_blueprint/core/data/repository/todo/todo_repository.dart'
    as todo_repository;
import 'package:flutter_architecture_blueprint/core/domain/model/editable_user_task.dart';
import 'package:flutter_architecture_blueprint/core/util/alert_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_list_usecase.freezed.dart';

final taskListUseCaseProvider = Provider.autoDispose((ref) {
  return TaskListUseCase(ref.watch(todo_repository.todoRepositoryProvider));
});

class TaskListUseCase {
  const TaskListUseCase(this._todoRepository);

  final todo_repository.TodoRepository _todoRepository;

  Stream<List<EditableUserTask>> call() {
    return _todoRepository.taskList.map(
      (list) => list.map((t) => t.toEditable()).toList(),
    );
  }

  Future<void> fetch() async {
    try {
      await _todoRepository.fetchTaskList();
    } on todo_repository.Other catch (_) {
      throw const TaskListUseCaseException.alert(
          state: AlertState.okDialog(message: 'Error'));
    }
  }
}

@freezed
sealed class TaskListUseCaseException
    with _$TaskListUseCaseException
    implements Exception {
  const factory TaskListUseCaseException.alert({
    required AlertState state,
  }) = Alert;
}
