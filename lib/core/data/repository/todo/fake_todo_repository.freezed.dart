// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fake_todo_repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FakeTodoRepositoryState {
  List<UserTask> get taskList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FakeTodoRepositoryStateCopyWith<FakeTodoRepositoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FakeTodoRepositoryStateCopyWith<$Res> {
  factory $FakeTodoRepositoryStateCopyWith(FakeTodoRepositoryState value,
          $Res Function(FakeTodoRepositoryState) then) =
      _$FakeTodoRepositoryStateCopyWithImpl<$Res, FakeTodoRepositoryState>;
  @useResult
  $Res call({List<UserTask> taskList});
}

/// @nodoc
class _$FakeTodoRepositoryStateCopyWithImpl<$Res,
        $Val extends FakeTodoRepositoryState>
    implements $FakeTodoRepositoryStateCopyWith<$Res> {
  _$FakeTodoRepositoryStateCopyWithImpl(this._value, this._then);

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
              as List<UserTask>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FakeTodoRepositoryStateImplCopyWith<$Res>
    implements $FakeTodoRepositoryStateCopyWith<$Res> {
  factory _$$FakeTodoRepositoryStateImplCopyWith(
          _$FakeTodoRepositoryStateImpl value,
          $Res Function(_$FakeTodoRepositoryStateImpl) then) =
      __$$FakeTodoRepositoryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<UserTask> taskList});
}

/// @nodoc
class __$$FakeTodoRepositoryStateImplCopyWithImpl<$Res>
    extends _$FakeTodoRepositoryStateCopyWithImpl<$Res,
        _$FakeTodoRepositoryStateImpl>
    implements _$$FakeTodoRepositoryStateImplCopyWith<$Res> {
  __$$FakeTodoRepositoryStateImplCopyWithImpl(
      _$FakeTodoRepositoryStateImpl _value,
      $Res Function(_$FakeTodoRepositoryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskList = null,
  }) {
    return _then(_$FakeTodoRepositoryStateImpl(
      taskList: null == taskList
          ? _value._taskList
          : taskList // ignore: cast_nullable_to_non_nullable
              as List<UserTask>,
    ));
  }
}

/// @nodoc

class _$FakeTodoRepositoryStateImpl
    with DiagnosticableTreeMixin
    implements _FakeTodoRepositoryState {
  const _$FakeTodoRepositoryStateImpl(
      {final List<UserTask> taskList = const []})
      : _taskList = taskList;

  final List<UserTask> _taskList;
  @override
  @JsonKey()
  List<UserTask> get taskList {
    if (_taskList is EqualUnmodifiableListView) return _taskList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_taskList);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FakeTodoRepositoryState(taskList: $taskList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FakeTodoRepositoryState'))
      ..add(DiagnosticsProperty('taskList', taskList));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FakeTodoRepositoryStateImpl &&
            const DeepCollectionEquality().equals(other._taskList, _taskList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_taskList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FakeTodoRepositoryStateImplCopyWith<_$FakeTodoRepositoryStateImpl>
      get copyWith => __$$FakeTodoRepositoryStateImplCopyWithImpl<
          _$FakeTodoRepositoryStateImpl>(this, _$identity);
}

abstract class _FakeTodoRepositoryState implements FakeTodoRepositoryState {
  const factory _FakeTodoRepositoryState({final List<UserTask> taskList}) =
      _$FakeTodoRepositoryStateImpl;

  @override
  List<UserTask> get taskList;
  @override
  @JsonKey(ignore: true)
  _$$FakeTodoRepositoryStateImplCopyWith<_$FakeTodoRepositoryStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
