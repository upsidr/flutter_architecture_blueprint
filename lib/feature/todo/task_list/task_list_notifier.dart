import 'dart:async';

import 'package:flutter_architecture_blueprint/core/domain/todo/edit_task_usecase.dart'
    as edit_task;
import 'package:flutter_architecture_blueprint/core/domain/todo/task_list_usecase.dart'
    as task_list;
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'task_list_contract.dart';

part 'task_list_notifier.g.dart';

final taskListEffectProvider =
    StateProvider((ref) => const TaskListEffect.none());

@riverpod
class TaskListNotifier extends _$TaskListNotifier implements TaskListContract {
  late final StreamSubscription _taskListSubscription;

  task_list.TaskListUseCase get _taskListUseCase =>
      ref.read(task_list.taskListUseCaseProvider);
  edit_task.EditTaskUseCase get _editTaskUseCase =>
      ref.read(edit_task.editTaskUseCaseProvider);

  @override
  TaskListUiState build() {
    _taskListSubscription = _taskListUseCase()
        .listen((list) => state = state.copyWith(taskList: list));
    ref.onDispose(_taskListSubscription.cancel);
    return const TaskListUiState();
  }

  @override
  void consume() {
    _updateEffect(const TaskListEffect.none());
  }

  @override
  Future<void> send(TaskListAction action) async {
    switch (action) {
      case OnAppear():
        try {
          await _taskListUseCase.fetch();
        } on task_list.Alert catch (e) {
          _updateEffect(TaskListEffect.showAlert(state: e.state));
        }
      case NewTaskButtonTapped():
        _updateEffect(const TaskListEffect.goDetail(task: null));
      case TaskTapped():
        _updateEffect(TaskListEffect.goDetail(task: action.task));
      case ToggleIsCompleted():
        try {
          await _editTaskUseCase.toggleIsCompleted(action.task);
        } on edit_task.Alert catch (e) {
          _updateEffect(TaskListEffect.showAlert(state: e.state));
        }
      case OnTaskSwiped():
        try {
          await _editTaskUseCase.deleteTask(id: action.task.id);
        } on edit_task.Alert catch (e) {
          _updateEffect(TaskListEffect.showAlert(state: e.state));
        }
    }
  }

  _updateEffect(TaskListEffect effect) =>
      ref.read(taskListEffectProvider.notifier).update((state) => effect);
}
