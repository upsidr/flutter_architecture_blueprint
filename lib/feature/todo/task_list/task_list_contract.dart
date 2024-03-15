import 'package:flutter_architecture_blueprint/core/domain/model/editable_user_task.dart';
import 'package:flutter_architecture_blueprint/core/util/alert_state.dart';
import 'package:flutter_architecture_blueprint/core/util/base_contract.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_list_contract.freezed.dart';

// Notifier must implement this
typedef TaskListContract
    = BaseContract<TaskListUiState, TaskListAction, TaskListEffect>;

@freezed
class TaskListUiState with _$TaskListUiState {
  const factory TaskListUiState({
    @Default([]) List<EditableUserTask> taskList,
  }) = _TaskListUiState;
}

@freezed
sealed class TaskListAction with _$TaskListAction {
  const factory TaskListAction.onAppear() = OnAppear;
  const factory TaskListAction.newTaskButtonTapped() = NewTaskButtonTapped;
  const factory TaskListAction.taskTapped(EditableUserTask task) = TaskTapped;
  const factory TaskListAction.toggleIsCompleted(EditableUserTask task) =
      ToggleIsCompleted;
  const factory TaskListAction.onTaskSwiped(EditableUserTask task) =
      OnTaskSwiped;
}

@freezed
sealed class TaskListEffect with _$TaskListEffect {
  const factory TaskListEffect.none() = None;
  const factory TaskListEffect.goDetail({
    required EditableUserTask? task,
  }) = GoDetail;
  const factory TaskListEffect.showAlert({
    required AlertState state,
  }) = ShowAlert;
}
