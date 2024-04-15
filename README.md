# flutter_architecture_blueprint

<img src="docs/images/dataflow.png" />

**flutter_architecture_blueprint is a flutter project that demonstrates a three layers architecture in the form of ToDo app.**

Detailed explanations and background information are provided in the related article on our technical blog.

👉 https://tech.up-sider.com/entry/2024/04/15/110000

## Demo

https://upsidr.github.io/flutter_architecture_blueprint/

## Overview

### Packages

| Purpose | Package |
|----|----|
| State Management| hooks_riverpod, rxdart |
| Modeling | freezed |
| Routing | auto_route |


### Modeling View

```dart
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
```

### Testing

Steps of Unit Testing for presentation layer:
1. Call `notifier.send(Action)` to trigger View events
2. Assert UiState / Effect


```dart
test('Tap NewTaskButton, navigate detail', () async {
  final (notifier, uiState, effect) = buildAccessors();

  todoRepository.handler.fetchTaskList = () async =>
      fakeTodoState.update((value) => value.copyWith(taskList: []));

  await notifier.send(const TaskListAction.onAppear());
  expect(uiState().taskList.isEmpty, true);

  await notifier.send(const TaskListAction.newTaskButtonTapped());
  expect(
    effect(),
    const TaskListEffect.goDetail(task: null),
  );
});
```

### Directory Structure

```
├── app_router.dart
├── app_router.gr.dart
├── core
│   ├── data
│   │   ├── network
│   │   │   └── fake_todo_api_client.dart
│   │   └── repository
│   │       └── todo
│   │           ├── fake_todo_repository.dart
│   │           ├── fake_todo_repository.freezed.dart
│   │           ├── todo_repository.dart
│   │           └── todo_repository.freezed.dart
│   ├── domain
│   │   ├── model
│   │   │   ├── editable_user_task.dart
│   │   │   └── editable_user_task.freezed.dart
│   │   └── todo
│   │       ├── edit_task_usecase.dart
│   │       ├── edit_task_usecase.freezed.dart
│   │       ├── task_list_usecase.dart
│   │       └── task_list_usecase.freezed.dart
│   ├── model
│   │   ├── user_task.dart
│   │   ├── user_task.freezed.dart
│   │   └── user_task.g.dart
│   └── util
│       ├── alert_state.dart
│       ├── alert_state.freezed.dart
│       ├── base_contract.dart
│       ├── datetime_formatted.dart
│       └── stream_extensions.dart
├── feature
│   └── todo
│       ├── edit_task
│       │   ├── edit_task_contract.dart
│       │   ├── edit_task_contract.freezed.dart
│       │   ├── edit_task_notifier.dart
│       │   ├── edit_task_notifier.g.dart
│       │   ├── edit_task_page.dart
│       │   └── ui_components
│       │       ├── task_text_field.dart
│       │       └── toggle_complete_button.dart
│       └── task_list
│           ├── task_list_contract.dart
│           ├── task_list_contract.freezed.dart
│           ├── task_list_notifier.dart
│           ├── task_list_notifier.g.dart
│           ├── task_list_page.dart
│           └── ui_components
│               ├── task_list_item.dart
│               └── task_list_placeholder.dart
├── main.dart
└── main_device_preview.dart
```

## Development

[Getting Started](docs/GETTING_STARTED.md)