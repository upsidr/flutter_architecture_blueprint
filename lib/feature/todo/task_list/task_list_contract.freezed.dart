// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_list_contract.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TaskListUiState {
  List<EditableUserTask> get taskList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskListUiStateCopyWith<TaskListUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskListUiStateCopyWith<$Res> {
  factory $TaskListUiStateCopyWith(
          TaskListUiState value, $Res Function(TaskListUiState) then) =
      _$TaskListUiStateCopyWithImpl<$Res, TaskListUiState>;
  @useResult
  $Res call({List<EditableUserTask> taskList});
}

/// @nodoc
class _$TaskListUiStateCopyWithImpl<$Res, $Val extends TaskListUiState>
    implements $TaskListUiStateCopyWith<$Res> {
  _$TaskListUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskList = null,
  }) {
    return _then(_value.copyWith(
      taskList: null == taskList
          ? _value.taskList
          : taskList // ignore: cast_nullable_to_non_nullable
              as List<EditableUserTask>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskListUiStateImplCopyWith<$Res>
    implements $TaskListUiStateCopyWith<$Res> {
  factory _$$TaskListUiStateImplCopyWith(_$TaskListUiStateImpl value,
          $Res Function(_$TaskListUiStateImpl) then) =
      __$$TaskListUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<EditableUserTask> taskList});
}

/// @nodoc
class __$$TaskListUiStateImplCopyWithImpl<$Res>
    extends _$TaskListUiStateCopyWithImpl<$Res, _$TaskListUiStateImpl>
    implements _$$TaskListUiStateImplCopyWith<$Res> {
  __$$TaskListUiStateImplCopyWithImpl(
      _$TaskListUiStateImpl _value, $Res Function(_$TaskListUiStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskList = null,
  }) {
    return _then(_$TaskListUiStateImpl(
      taskList: null == taskList
          ? _value._taskList
          : taskList // ignore: cast_nullable_to_non_nullable
              as List<EditableUserTask>,
    ));
  }
}

/// @nodoc

class _$TaskListUiStateImpl implements _TaskListUiState {
  const _$TaskListUiStateImpl(
      {final List<EditableUserTask> taskList = const []})
      : _taskList = taskList;

  final List<EditableUserTask> _taskList;
  @override
  @JsonKey()
  List<EditableUserTask> get taskList {
    if (_taskList is EqualUnmodifiableListView) return _taskList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_taskList);
  }

  @override
  String toString() {
    return 'TaskListUiState(taskList: $taskList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskListUiStateImpl &&
            const DeepCollectionEquality().equals(other._taskList, _taskList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_taskList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskListUiStateImplCopyWith<_$TaskListUiStateImpl> get copyWith =>
      __$$TaskListUiStateImplCopyWithImpl<_$TaskListUiStateImpl>(
          this, _$identity);
}

abstract class _TaskListUiState implements TaskListUiState {
  const factory _TaskListUiState({final List<EditableUserTask> taskList}) =
      _$TaskListUiStateImpl;

  @override
  List<EditableUserTask> get taskList;
  @override
  @JsonKey(ignore: true)
  _$$TaskListUiStateImplCopyWith<_$TaskListUiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TaskListAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onAppear,
    required TResult Function() newTaskButtonTapped,
    required TResult Function(EditableUserTask task) taskTapped,
    required TResult Function(EditableUserTask task) toggleIsCompleted,
    required TResult Function(EditableUserTask task) onTaskSwiped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onAppear,
    TResult? Function()? newTaskButtonTapped,
    TResult? Function(EditableUserTask task)? taskTapped,
    TResult? Function(EditableUserTask task)? toggleIsCompleted,
    TResult? Function(EditableUserTask task)? onTaskSwiped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onAppear,
    TResult Function()? newTaskButtonTapped,
    TResult Function(EditableUserTask task)? taskTapped,
    TResult Function(EditableUserTask task)? toggleIsCompleted,
    TResult Function(EditableUserTask task)? onTaskSwiped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnAppear value) onAppear,
    required TResult Function(NewTaskButtonTapped value) newTaskButtonTapped,
    required TResult Function(TaskTapped value) taskTapped,
    required TResult Function(ToggleIsCompleted value) toggleIsCompleted,
    required TResult Function(OnTaskSwiped value) onTaskSwiped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnAppear value)? onAppear,
    TResult? Function(NewTaskButtonTapped value)? newTaskButtonTapped,
    TResult? Function(TaskTapped value)? taskTapped,
    TResult? Function(ToggleIsCompleted value)? toggleIsCompleted,
    TResult? Function(OnTaskSwiped value)? onTaskSwiped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnAppear value)? onAppear,
    TResult Function(NewTaskButtonTapped value)? newTaskButtonTapped,
    TResult Function(TaskTapped value)? taskTapped,
    TResult Function(ToggleIsCompleted value)? toggleIsCompleted,
    TResult Function(OnTaskSwiped value)? onTaskSwiped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskListActionCopyWith<$Res> {
  factory $TaskListActionCopyWith(
          TaskListAction value, $Res Function(TaskListAction) then) =
      _$TaskListActionCopyWithImpl<$Res, TaskListAction>;
}

/// @nodoc
class _$TaskListActionCopyWithImpl<$Res, $Val extends TaskListAction>
    implements $TaskListActionCopyWith<$Res> {
  _$TaskListActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OnAppearImplCopyWith<$Res> {
  factory _$$OnAppearImplCopyWith(
          _$OnAppearImpl value, $Res Function(_$OnAppearImpl) then) =
      __$$OnAppearImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnAppearImplCopyWithImpl<$Res>
    extends _$TaskListActionCopyWithImpl<$Res, _$OnAppearImpl>
    implements _$$OnAppearImplCopyWith<$Res> {
  __$$OnAppearImplCopyWithImpl(
      _$OnAppearImpl _value, $Res Function(_$OnAppearImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnAppearImpl implements OnAppear {
  const _$OnAppearImpl();

  @override
  String toString() {
    return 'TaskListAction.onAppear()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnAppearImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onAppear,
    required TResult Function() newTaskButtonTapped,
    required TResult Function(EditableUserTask task) taskTapped,
    required TResult Function(EditableUserTask task) toggleIsCompleted,
    required TResult Function(EditableUserTask task) onTaskSwiped,
  }) {
    return onAppear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onAppear,
    TResult? Function()? newTaskButtonTapped,
    TResult? Function(EditableUserTask task)? taskTapped,
    TResult? Function(EditableUserTask task)? toggleIsCompleted,
    TResult? Function(EditableUserTask task)? onTaskSwiped,
  }) {
    return onAppear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onAppear,
    TResult Function()? newTaskButtonTapped,
    TResult Function(EditableUserTask task)? taskTapped,
    TResult Function(EditableUserTask task)? toggleIsCompleted,
    TResult Function(EditableUserTask task)? onTaskSwiped,
    required TResult orElse(),
  }) {
    if (onAppear != null) {
      return onAppear();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnAppear value) onAppear,
    required TResult Function(NewTaskButtonTapped value) newTaskButtonTapped,
    required TResult Function(TaskTapped value) taskTapped,
    required TResult Function(ToggleIsCompleted value) toggleIsCompleted,
    required TResult Function(OnTaskSwiped value) onTaskSwiped,
  }) {
    return onAppear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnAppear value)? onAppear,
    TResult? Function(NewTaskButtonTapped value)? newTaskButtonTapped,
    TResult? Function(TaskTapped value)? taskTapped,
    TResult? Function(ToggleIsCompleted value)? toggleIsCompleted,
    TResult? Function(OnTaskSwiped value)? onTaskSwiped,
  }) {
    return onAppear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnAppear value)? onAppear,
    TResult Function(NewTaskButtonTapped value)? newTaskButtonTapped,
    TResult Function(TaskTapped value)? taskTapped,
    TResult Function(ToggleIsCompleted value)? toggleIsCompleted,
    TResult Function(OnTaskSwiped value)? onTaskSwiped,
    required TResult orElse(),
  }) {
    if (onAppear != null) {
      return onAppear(this);
    }
    return orElse();
  }
}

abstract class OnAppear implements TaskListAction {
  const factory OnAppear() = _$OnAppearImpl;
}

/// @nodoc
abstract class _$$NewTaskButtonTappedImplCopyWith<$Res> {
  factory _$$NewTaskButtonTappedImplCopyWith(_$NewTaskButtonTappedImpl value,
          $Res Function(_$NewTaskButtonTappedImpl) then) =
      __$$NewTaskButtonTappedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NewTaskButtonTappedImplCopyWithImpl<$Res>
    extends _$TaskListActionCopyWithImpl<$Res, _$NewTaskButtonTappedImpl>
    implements _$$NewTaskButtonTappedImplCopyWith<$Res> {
  __$$NewTaskButtonTappedImplCopyWithImpl(_$NewTaskButtonTappedImpl _value,
      $Res Function(_$NewTaskButtonTappedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NewTaskButtonTappedImpl implements NewTaskButtonTapped {
  const _$NewTaskButtonTappedImpl();

  @override
  String toString() {
    return 'TaskListAction.newTaskButtonTapped()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewTaskButtonTappedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onAppear,
    required TResult Function() newTaskButtonTapped,
    required TResult Function(EditableUserTask task) taskTapped,
    required TResult Function(EditableUserTask task) toggleIsCompleted,
    required TResult Function(EditableUserTask task) onTaskSwiped,
  }) {
    return newTaskButtonTapped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onAppear,
    TResult? Function()? newTaskButtonTapped,
    TResult? Function(EditableUserTask task)? taskTapped,
    TResult? Function(EditableUserTask task)? toggleIsCompleted,
    TResult? Function(EditableUserTask task)? onTaskSwiped,
  }) {
    return newTaskButtonTapped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onAppear,
    TResult Function()? newTaskButtonTapped,
    TResult Function(EditableUserTask task)? taskTapped,
    TResult Function(EditableUserTask task)? toggleIsCompleted,
    TResult Function(EditableUserTask task)? onTaskSwiped,
    required TResult orElse(),
  }) {
    if (newTaskButtonTapped != null) {
      return newTaskButtonTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnAppear value) onAppear,
    required TResult Function(NewTaskButtonTapped value) newTaskButtonTapped,
    required TResult Function(TaskTapped value) taskTapped,
    required TResult Function(ToggleIsCompleted value) toggleIsCompleted,
    required TResult Function(OnTaskSwiped value) onTaskSwiped,
  }) {
    return newTaskButtonTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnAppear value)? onAppear,
    TResult? Function(NewTaskButtonTapped value)? newTaskButtonTapped,
    TResult? Function(TaskTapped value)? taskTapped,
    TResult? Function(ToggleIsCompleted value)? toggleIsCompleted,
    TResult? Function(OnTaskSwiped value)? onTaskSwiped,
  }) {
    return newTaskButtonTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnAppear value)? onAppear,
    TResult Function(NewTaskButtonTapped value)? newTaskButtonTapped,
    TResult Function(TaskTapped value)? taskTapped,
    TResult Function(ToggleIsCompleted value)? toggleIsCompleted,
    TResult Function(OnTaskSwiped value)? onTaskSwiped,
    required TResult orElse(),
  }) {
    if (newTaskButtonTapped != null) {
      return newTaskButtonTapped(this);
    }
    return orElse();
  }
}

abstract class NewTaskButtonTapped implements TaskListAction {
  const factory NewTaskButtonTapped() = _$NewTaskButtonTappedImpl;
}

/// @nodoc
abstract class _$$TaskTappedImplCopyWith<$Res> {
  factory _$$TaskTappedImplCopyWith(
          _$TaskTappedImpl value, $Res Function(_$TaskTappedImpl) then) =
      __$$TaskTappedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EditableUserTask task});

  $EditableUserTaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$TaskTappedImplCopyWithImpl<$Res>
    extends _$TaskListActionCopyWithImpl<$Res, _$TaskTappedImpl>
    implements _$$TaskTappedImplCopyWith<$Res> {
  __$$TaskTappedImplCopyWithImpl(
      _$TaskTappedImpl _value, $Res Function(_$TaskTappedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$TaskTappedImpl(
      null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as EditableUserTask,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EditableUserTaskCopyWith<$Res> get task {
    return $EditableUserTaskCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc

class _$TaskTappedImpl implements TaskTapped {
  const _$TaskTappedImpl(this.task);

  @override
  final EditableUserTask task;

  @override
  String toString() {
    return 'TaskListAction.taskTapped(task: $task)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskTappedImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskTappedImplCopyWith<_$TaskTappedImpl> get copyWith =>
      __$$TaskTappedImplCopyWithImpl<_$TaskTappedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onAppear,
    required TResult Function() newTaskButtonTapped,
    required TResult Function(EditableUserTask task) taskTapped,
    required TResult Function(EditableUserTask task) toggleIsCompleted,
    required TResult Function(EditableUserTask task) onTaskSwiped,
  }) {
    return taskTapped(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onAppear,
    TResult? Function()? newTaskButtonTapped,
    TResult? Function(EditableUserTask task)? taskTapped,
    TResult? Function(EditableUserTask task)? toggleIsCompleted,
    TResult? Function(EditableUserTask task)? onTaskSwiped,
  }) {
    return taskTapped?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onAppear,
    TResult Function()? newTaskButtonTapped,
    TResult Function(EditableUserTask task)? taskTapped,
    TResult Function(EditableUserTask task)? toggleIsCompleted,
    TResult Function(EditableUserTask task)? onTaskSwiped,
    required TResult orElse(),
  }) {
    if (taskTapped != null) {
      return taskTapped(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnAppear value) onAppear,
    required TResult Function(NewTaskButtonTapped value) newTaskButtonTapped,
    required TResult Function(TaskTapped value) taskTapped,
    required TResult Function(ToggleIsCompleted value) toggleIsCompleted,
    required TResult Function(OnTaskSwiped value) onTaskSwiped,
  }) {
    return taskTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnAppear value)? onAppear,
    TResult? Function(NewTaskButtonTapped value)? newTaskButtonTapped,
    TResult? Function(TaskTapped value)? taskTapped,
    TResult? Function(ToggleIsCompleted value)? toggleIsCompleted,
    TResult? Function(OnTaskSwiped value)? onTaskSwiped,
  }) {
    return taskTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnAppear value)? onAppear,
    TResult Function(NewTaskButtonTapped value)? newTaskButtonTapped,
    TResult Function(TaskTapped value)? taskTapped,
    TResult Function(ToggleIsCompleted value)? toggleIsCompleted,
    TResult Function(OnTaskSwiped value)? onTaskSwiped,
    required TResult orElse(),
  }) {
    if (taskTapped != null) {
      return taskTapped(this);
    }
    return orElse();
  }
}

abstract class TaskTapped implements TaskListAction {
  const factory TaskTapped(final EditableUserTask task) = _$TaskTappedImpl;

  EditableUserTask get task;
  @JsonKey(ignore: true)
  _$$TaskTappedImplCopyWith<_$TaskTappedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleIsCompletedImplCopyWith<$Res> {
  factory _$$ToggleIsCompletedImplCopyWith(_$ToggleIsCompletedImpl value,
          $Res Function(_$ToggleIsCompletedImpl) then) =
      __$$ToggleIsCompletedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EditableUserTask task});

  $EditableUserTaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$ToggleIsCompletedImplCopyWithImpl<$Res>
    extends _$TaskListActionCopyWithImpl<$Res, _$ToggleIsCompletedImpl>
    implements _$$ToggleIsCompletedImplCopyWith<$Res> {
  __$$ToggleIsCompletedImplCopyWithImpl(_$ToggleIsCompletedImpl _value,
      $Res Function(_$ToggleIsCompletedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$ToggleIsCompletedImpl(
      null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as EditableUserTask,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EditableUserTaskCopyWith<$Res> get task {
    return $EditableUserTaskCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc

class _$ToggleIsCompletedImpl implements ToggleIsCompleted {
  const _$ToggleIsCompletedImpl(this.task);

  @override
  final EditableUserTask task;

  @override
  String toString() {
    return 'TaskListAction.toggleIsCompleted(task: $task)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleIsCompletedImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleIsCompletedImplCopyWith<_$ToggleIsCompletedImpl> get copyWith =>
      __$$ToggleIsCompletedImplCopyWithImpl<_$ToggleIsCompletedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onAppear,
    required TResult Function() newTaskButtonTapped,
    required TResult Function(EditableUserTask task) taskTapped,
    required TResult Function(EditableUserTask task) toggleIsCompleted,
    required TResult Function(EditableUserTask task) onTaskSwiped,
  }) {
    return toggleIsCompleted(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onAppear,
    TResult? Function()? newTaskButtonTapped,
    TResult? Function(EditableUserTask task)? taskTapped,
    TResult? Function(EditableUserTask task)? toggleIsCompleted,
    TResult? Function(EditableUserTask task)? onTaskSwiped,
  }) {
    return toggleIsCompleted?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onAppear,
    TResult Function()? newTaskButtonTapped,
    TResult Function(EditableUserTask task)? taskTapped,
    TResult Function(EditableUserTask task)? toggleIsCompleted,
    TResult Function(EditableUserTask task)? onTaskSwiped,
    required TResult orElse(),
  }) {
    if (toggleIsCompleted != null) {
      return toggleIsCompleted(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnAppear value) onAppear,
    required TResult Function(NewTaskButtonTapped value) newTaskButtonTapped,
    required TResult Function(TaskTapped value) taskTapped,
    required TResult Function(ToggleIsCompleted value) toggleIsCompleted,
    required TResult Function(OnTaskSwiped value) onTaskSwiped,
  }) {
    return toggleIsCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnAppear value)? onAppear,
    TResult? Function(NewTaskButtonTapped value)? newTaskButtonTapped,
    TResult? Function(TaskTapped value)? taskTapped,
    TResult? Function(ToggleIsCompleted value)? toggleIsCompleted,
    TResult? Function(OnTaskSwiped value)? onTaskSwiped,
  }) {
    return toggleIsCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnAppear value)? onAppear,
    TResult Function(NewTaskButtonTapped value)? newTaskButtonTapped,
    TResult Function(TaskTapped value)? taskTapped,
    TResult Function(ToggleIsCompleted value)? toggleIsCompleted,
    TResult Function(OnTaskSwiped value)? onTaskSwiped,
    required TResult orElse(),
  }) {
    if (toggleIsCompleted != null) {
      return toggleIsCompleted(this);
    }
    return orElse();
  }
}

abstract class ToggleIsCompleted implements TaskListAction {
  const factory ToggleIsCompleted(final EditableUserTask task) =
      _$ToggleIsCompletedImpl;

  EditableUserTask get task;
  @JsonKey(ignore: true)
  _$$ToggleIsCompletedImplCopyWith<_$ToggleIsCompletedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnTaskSwipedImplCopyWith<$Res> {
  factory _$$OnTaskSwipedImplCopyWith(
          _$OnTaskSwipedImpl value, $Res Function(_$OnTaskSwipedImpl) then) =
      __$$OnTaskSwipedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EditableUserTask task});

  $EditableUserTaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$OnTaskSwipedImplCopyWithImpl<$Res>
    extends _$TaskListActionCopyWithImpl<$Res, _$OnTaskSwipedImpl>
    implements _$$OnTaskSwipedImplCopyWith<$Res> {
  __$$OnTaskSwipedImplCopyWithImpl(
      _$OnTaskSwipedImpl _value, $Res Function(_$OnTaskSwipedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$OnTaskSwipedImpl(
      null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as EditableUserTask,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EditableUserTaskCopyWith<$Res> get task {
    return $EditableUserTaskCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc

class _$OnTaskSwipedImpl implements OnTaskSwiped {
  const _$OnTaskSwipedImpl(this.task);

  @override
  final EditableUserTask task;

  @override
  String toString() {
    return 'TaskListAction.onTaskSwiped(task: $task)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnTaskSwipedImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnTaskSwipedImplCopyWith<_$OnTaskSwipedImpl> get copyWith =>
      __$$OnTaskSwipedImplCopyWithImpl<_$OnTaskSwipedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onAppear,
    required TResult Function() newTaskButtonTapped,
    required TResult Function(EditableUserTask task) taskTapped,
    required TResult Function(EditableUserTask task) toggleIsCompleted,
    required TResult Function(EditableUserTask task) onTaskSwiped,
  }) {
    return onTaskSwiped(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onAppear,
    TResult? Function()? newTaskButtonTapped,
    TResult? Function(EditableUserTask task)? taskTapped,
    TResult? Function(EditableUserTask task)? toggleIsCompleted,
    TResult? Function(EditableUserTask task)? onTaskSwiped,
  }) {
    return onTaskSwiped?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onAppear,
    TResult Function()? newTaskButtonTapped,
    TResult Function(EditableUserTask task)? taskTapped,
    TResult Function(EditableUserTask task)? toggleIsCompleted,
    TResult Function(EditableUserTask task)? onTaskSwiped,
    required TResult orElse(),
  }) {
    if (onTaskSwiped != null) {
      return onTaskSwiped(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnAppear value) onAppear,
    required TResult Function(NewTaskButtonTapped value) newTaskButtonTapped,
    required TResult Function(TaskTapped value) taskTapped,
    required TResult Function(ToggleIsCompleted value) toggleIsCompleted,
    required TResult Function(OnTaskSwiped value) onTaskSwiped,
  }) {
    return onTaskSwiped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnAppear value)? onAppear,
    TResult? Function(NewTaskButtonTapped value)? newTaskButtonTapped,
    TResult? Function(TaskTapped value)? taskTapped,
    TResult? Function(ToggleIsCompleted value)? toggleIsCompleted,
    TResult? Function(OnTaskSwiped value)? onTaskSwiped,
  }) {
    return onTaskSwiped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnAppear value)? onAppear,
    TResult Function(NewTaskButtonTapped value)? newTaskButtonTapped,
    TResult Function(TaskTapped value)? taskTapped,
    TResult Function(ToggleIsCompleted value)? toggleIsCompleted,
    TResult Function(OnTaskSwiped value)? onTaskSwiped,
    required TResult orElse(),
  }) {
    if (onTaskSwiped != null) {
      return onTaskSwiped(this);
    }
    return orElse();
  }
}

abstract class OnTaskSwiped implements TaskListAction {
  const factory OnTaskSwiped(final EditableUserTask task) = _$OnTaskSwipedImpl;

  EditableUserTask get task;
  @JsonKey(ignore: true)
  _$$OnTaskSwipedImplCopyWith<_$OnTaskSwipedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TaskListEffect {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(EditableUserTask? task) goDetail,
    required TResult Function(AlertState state) showAlert,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function(EditableUserTask? task)? goDetail,
    TResult? Function(AlertState state)? showAlert,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(EditableUserTask? task)? goDetail,
    TResult Function(AlertState state)? showAlert,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(None value) none,
    required TResult Function(GoDetail value) goDetail,
    required TResult Function(ShowAlert value) showAlert,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(None value)? none,
    TResult? Function(GoDetail value)? goDetail,
    TResult? Function(ShowAlert value)? showAlert,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(None value)? none,
    TResult Function(GoDetail value)? goDetail,
    TResult Function(ShowAlert value)? showAlert,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskListEffectCopyWith<$Res> {
  factory $TaskListEffectCopyWith(
          TaskListEffect value, $Res Function(TaskListEffect) then) =
      _$TaskListEffectCopyWithImpl<$Res, TaskListEffect>;
}

/// @nodoc
class _$TaskListEffectCopyWithImpl<$Res, $Val extends TaskListEffect>
    implements $TaskListEffectCopyWith<$Res> {
  _$TaskListEffectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NoneImplCopyWith<$Res> {
  factory _$$NoneImplCopyWith(
          _$NoneImpl value, $Res Function(_$NoneImpl) then) =
      __$$NoneImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoneImplCopyWithImpl<$Res>
    extends _$TaskListEffectCopyWithImpl<$Res, _$NoneImpl>
    implements _$$NoneImplCopyWith<$Res> {
  __$$NoneImplCopyWithImpl(_$NoneImpl _value, $Res Function(_$NoneImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoneImpl implements None {
  const _$NoneImpl();

  @override
  String toString() {
    return 'TaskListEffect.none()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoneImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(EditableUserTask? task) goDetail,
    required TResult Function(AlertState state) showAlert,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function(EditableUserTask? task)? goDetail,
    TResult? Function(AlertState state)? showAlert,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(EditableUserTask? task)? goDetail,
    TResult Function(AlertState state)? showAlert,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(None value) none,
    required TResult Function(GoDetail value) goDetail,
    required TResult Function(ShowAlert value) showAlert,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(None value)? none,
    TResult? Function(GoDetail value)? goDetail,
    TResult? Function(ShowAlert value)? showAlert,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(None value)? none,
    TResult Function(GoDetail value)? goDetail,
    TResult Function(ShowAlert value)? showAlert,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class None implements TaskListEffect {
  const factory None() = _$NoneImpl;
}

/// @nodoc
abstract class _$$GoDetailImplCopyWith<$Res> {
  factory _$$GoDetailImplCopyWith(
          _$GoDetailImpl value, $Res Function(_$GoDetailImpl) then) =
      __$$GoDetailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EditableUserTask? task});

  $EditableUserTaskCopyWith<$Res>? get task;
}

/// @nodoc
class __$$GoDetailImplCopyWithImpl<$Res>
    extends _$TaskListEffectCopyWithImpl<$Res, _$GoDetailImpl>
    implements _$$GoDetailImplCopyWith<$Res> {
  __$$GoDetailImplCopyWithImpl(
      _$GoDetailImpl _value, $Res Function(_$GoDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = freezed,
  }) {
    return _then(_$GoDetailImpl(
      task: freezed == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as EditableUserTask?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EditableUserTaskCopyWith<$Res>? get task {
    if (_value.task == null) {
      return null;
    }

    return $EditableUserTaskCopyWith<$Res>(_value.task!, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc

class _$GoDetailImpl implements GoDetail {
  const _$GoDetailImpl({required this.task});

  @override
  final EditableUserTask? task;

  @override
  String toString() {
    return 'TaskListEffect.goDetail(task: $task)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoDetailImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GoDetailImplCopyWith<_$GoDetailImpl> get copyWith =>
      __$$GoDetailImplCopyWithImpl<_$GoDetailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(EditableUserTask? task) goDetail,
    required TResult Function(AlertState state) showAlert,
  }) {
    return goDetail(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function(EditableUserTask? task)? goDetail,
    TResult? Function(AlertState state)? showAlert,
  }) {
    return goDetail?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(EditableUserTask? task)? goDetail,
    TResult Function(AlertState state)? showAlert,
    required TResult orElse(),
  }) {
    if (goDetail != null) {
      return goDetail(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(None value) none,
    required TResult Function(GoDetail value) goDetail,
    required TResult Function(ShowAlert value) showAlert,
  }) {
    return goDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(None value)? none,
    TResult? Function(GoDetail value)? goDetail,
    TResult? Function(ShowAlert value)? showAlert,
  }) {
    return goDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(None value)? none,
    TResult Function(GoDetail value)? goDetail,
    TResult Function(ShowAlert value)? showAlert,
    required TResult orElse(),
  }) {
    if (goDetail != null) {
      return goDetail(this);
    }
    return orElse();
  }
}

abstract class GoDetail implements TaskListEffect {
  const factory GoDetail({required final EditableUserTask? task}) =
      _$GoDetailImpl;

  EditableUserTask? get task;
  @JsonKey(ignore: true)
  _$$GoDetailImplCopyWith<_$GoDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowAlertImplCopyWith<$Res> {
  factory _$$ShowAlertImplCopyWith(
          _$ShowAlertImpl value, $Res Function(_$ShowAlertImpl) then) =
      __$$ShowAlertImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AlertState state});

  $AlertStateCopyWith<$Res> get state;
}

/// @nodoc
class __$$ShowAlertImplCopyWithImpl<$Res>
    extends _$TaskListEffectCopyWithImpl<$Res, _$ShowAlertImpl>
    implements _$$ShowAlertImplCopyWith<$Res> {
  __$$ShowAlertImplCopyWithImpl(
      _$ShowAlertImpl _value, $Res Function(_$ShowAlertImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
  }) {
    return _then(_$ShowAlertImpl(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as AlertState,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AlertStateCopyWith<$Res> get state {
    return $AlertStateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc

class _$ShowAlertImpl implements ShowAlert {
  const _$ShowAlertImpl({required this.state});

  @override
  final AlertState state;

  @override
  String toString() {
    return 'TaskListEffect.showAlert(state: $state)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowAlertImpl &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowAlertImplCopyWith<_$ShowAlertImpl> get copyWith =>
      __$$ShowAlertImplCopyWithImpl<_$ShowAlertImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(EditableUserTask? task) goDetail,
    required TResult Function(AlertState state) showAlert,
  }) {
    return showAlert(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function(EditableUserTask? task)? goDetail,
    TResult? Function(AlertState state)? showAlert,
  }) {
    return showAlert?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(EditableUserTask? task)? goDetail,
    TResult Function(AlertState state)? showAlert,
    required TResult orElse(),
  }) {
    if (showAlert != null) {
      return showAlert(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(None value) none,
    required TResult Function(GoDetail value) goDetail,
    required TResult Function(ShowAlert value) showAlert,
  }) {
    return showAlert(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(None value)? none,
    TResult? Function(GoDetail value)? goDetail,
    TResult? Function(ShowAlert value)? showAlert,
  }) {
    return showAlert?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(None value)? none,
    TResult Function(GoDetail value)? goDetail,
    TResult Function(ShowAlert value)? showAlert,
    required TResult orElse(),
  }) {
    if (showAlert != null) {
      return showAlert(this);
    }
    return orElse();
  }
}

abstract class ShowAlert implements TaskListEffect {
  const factory ShowAlert({required final AlertState state}) = _$ShowAlertImpl;

  AlertState get state;
  @JsonKey(ignore: true)
  _$$ShowAlertImplCopyWith<_$ShowAlertImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
