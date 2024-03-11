import 'package:collection/collection.dart';
import 'package:flutter_architecture_blueprint/core/data/network/fake_todo_api_client.dart';
import 'package:flutter_architecture_blueprint/core/data/repository/todo/todo_repository.dart';
import 'package:flutter_architecture_blueprint/core/model/user_task.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rxdart/subjects.dart';

final todoRepositoryProvider = Provider<TodoRepository>(
  (ref) => TodoRepositoryImpl(ref.read(todoApiClient)),
);

class TodoRepositoryImpl implements TodoRepository {
  TodoRepositoryImpl(FakeTodoApiClient apiClient) : _apiClient = apiClient;

  final FakeTodoApiClient _apiClient;
  final _taskList = BehaviorSubject<List<UserTask>>.seeded([]);

  @override
  Stream<List<UserTask>> get taskList => _taskList.stream;

  @override
  Future<void> fetchTaskList() async {
    try {
      final taskList = await _apiClient.getTaskList();
      _taskList.add(taskList);
    } on Exception catch (e) {
      throw TodoRepositoryException.other(e);
    }
  }

  @override
  Future<void> addTask({required UserTask task}) async {
    try {
      await _apiClient.postTask(task: task);
      _taskList.add(_taskList.value.appending(task));
    } on Exception catch (e) {
      throw TodoRepositoryException.other(e);
    }
  }

  @override
  Future<void> updateTask({required UserTask task}) async {
    if (_taskList.value.none((t) => t.id == task.id)) {
      throw const TodoRepositoryException.taskNotFound();
    }
    try {
      await _apiClient.patchTask(task: task);
      _taskList.add(_taskList.value.replaced(task));
    } on Exception catch (e) {
      throw TodoRepositoryException.other(e);
    }
  }

  @override
  Future<void> removeTask({required String id}) async {
    if (_taskList.value.none((t) => t.id == id)) {
      throw const TodoRepositoryException.taskNotFound();
    }
    try {
      await _apiClient.deleteTask(id: id);
      _taskList.add(_taskList.value.deletedBy(id));
    } on Exception catch (e) {
      throw TodoRepositoryException.other(e);
    }
  }
}
