import 'package:collection/collection.dart';
import 'package:flutter_architecture_blueprint/core/data/network/fake_todo_api_client.dart';
import 'package:flutter_architecture_blueprint/core/model/user_task.dart';
import 'package:flutter_architecture_blueprint/core/util/stream_extensions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rxdart/subjects.dart';

part 'todo_repository.freezed.dart';

final todoRepositoryProvider = Provider<TodoRepository>(
  (ref) => TodoRepository(ref.read(todoApiClient)),
);

class TodoRepository {
  TodoRepository(FakeTodoApiClient apiClient) : _apiClient = apiClient;

  final FakeTodoApiClient _apiClient;
  final _taskList = BehaviorSubject<List<UserTask>>.seeded([]);

  Stream<List<UserTask>> get taskList => _taskList.stream;

  Future<void> fetchTaskList() async {
    try {
      final taskList = await _apiClient.getTaskList();
      _taskList.add(taskList);
    } on Exception catch (e) {
      throw TodoRepositoryException.other(e);
    }
  }

  Future<void> addTask({required UserTask task}) async {
    try {
      await _apiClient.postTask(task: task);
      _taskList.update((value) => value.appending(task));
    } on Exception catch (e) {
      throw TodoRepositoryException.other(e);
    }
  }

  Future<void> updateTask({required UserTask task}) async {
    if (_taskList.value.none((t) => t.id == task.id)) {
      throw const TodoRepositoryException.taskNotFound();
    }
    try {
      await _apiClient.patchTask(task: task);
      _taskList.update((value) => value.replaced(task));
    } on Exception catch (e) {
      throw TodoRepositoryException.other(e);
    }
  }

  Future<void> removeTask({required String id}) async {
    if (_taskList.value.none((t) => t.id == id)) {
      throw const TodoRepositoryException.taskNotFound();
    }
    try {
      await _apiClient.deleteTask(id: id);
      _taskList.update((value) => value.deletedBy(id));
    } on Exception catch (e) {
      throw TodoRepositoryException.other(e);
    }
  }
}

@freezed
sealed class TodoRepositoryException
    with _$TodoRepositoryException
    implements Exception {
  const factory TodoRepositoryException.taskNotFound() = TaskNotFound;
  const factory TodoRepositoryException.other(Exception detail) = Other;
}
