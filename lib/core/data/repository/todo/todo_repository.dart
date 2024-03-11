import 'package:flutter_architecture_blueprint/core/model/user_task.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_repository.freezed.dart';

abstract class TodoRepository {
  Stream<List<UserTask>> get taskList;

  Future<void> fetchTaskList();
  Future<void> addTask({required UserTask task});
  Future<void> updateTask({required UserTask task});
  Future<void> removeTask({required String id});
}

@freezed
class TodoRepositoryException
    with _$TodoRepositoryException
    implements Exception {
  const factory TodoRepositoryException.taskNotFound() = TaskNotFound;
  const factory TodoRepositoryException.other(Exception detail) = Other;
}
