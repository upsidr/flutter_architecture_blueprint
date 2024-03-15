import 'package:flutter/foundation.dart';
import 'package:flutter_architecture_blueprint/core/data/repository/todo/todo_repository.dart';
import 'package:flutter_architecture_blueprint/core/model/user_task.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/subjects.dart';

part 'fake_todo_repository.freezed.dart';

// Test Double for TodoRepository
// This Fake can override the behavior of all method calls.
class FakeTodoRepository implements TodoRepository {
  const FakeTodoRepository._(this.fakeState, this.handler);

  factory FakeTodoRepository.from(
      BehaviorSubject<FakeTodoRepositoryState> fakeState) {
    return FakeTodoRepository._(
        fakeState, FakeTodoRepositoryHandler(fakeState));
  }

  final BehaviorSubject<FakeTodoRepositoryState> fakeState;
  final FakeTodoRepositoryHandler handler;

  @override
  Stream<List<UserTask>> get taskList =>
      fakeState.map((state) => state.taskList);

  @override
  Future<void> fetchTaskList() async {
    await handler.fetchTaskList();
  }

  @override
  Future<void> addTask({required UserTask task}) async {
    await handler.addTask(task);
  }

  @override
  Future<void> updateTask({required UserTask task}) async {
    await handler.updateTask(task);
  }

  @override
  Future<void> removeTask({required String id}) async {
    await handler.removeTask(id);
  }
}

class FakeTodoRepositoryHandler {
  FakeTodoRepositoryHandler(this.fakeState);

  final BehaviorSubject<FakeTodoRepositoryState> fakeState;

  late AsyncCallback fetchTaskList = () async {};
  late AsyncValueSetter<UserTask> addTask = (task) async {
    final state = fakeState.value;
    fakeState.add(state.copyWith(taskList: state.taskList.appending(task)));
  };
  late AsyncValueSetter<UserTask> updateTask = (task) async {
    final state = fakeState.value;
    fakeState.add(state.copyWith(taskList: state.taskList.replaced(task)));
  };
  late AsyncValueSetter<String> removeTask = (taskId) async {
    final state = fakeState.value;
    fakeState.add(state.copyWith(taskList: state.taskList.deletedBy(taskId)));
  };
}

@freezed
class FakeTodoRepositoryState with _$FakeTodoRepositoryState {
  const factory FakeTodoRepositoryState({
    @Default([]) List<UserTask> taskList,
  }) = _FakeTodoRepositoryState;
}
