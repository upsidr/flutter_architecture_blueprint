// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'editable_user_task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EditableUserTask {
  String get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditableUserTaskCopyWith<EditableUserTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditableUserTaskCopyWith<$Res> {
  factory $EditableUserTaskCopyWith(
          EditableUserTask value, $Res Function(EditableUserTask) then) =
      _$EditableUserTaskCopyWithImpl<$Res, EditableUserTask>;
  @useResult
  $Res call(
      {String id,
      String? title,
      String? description,
      bool isCompleted,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$EditableUserTaskCopyWithImpl<$Res, $Val extends EditableUserTask>
    implements $EditableUserTaskCopyWith<$Res> {
  _$EditableUserTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? isCompleted = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditableUserTaskImplCopyWith<$Res>
    implements $EditableUserTaskCopyWith<$Res> {
  factory _$$EditableUserTaskImplCopyWith(_$EditableUserTaskImpl value,
          $Res Function(_$EditableUserTaskImpl) then) =
      __$$EditableUserTaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? title,
      String? description,
      bool isCompleted,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$$EditableUserTaskImplCopyWithImpl<$Res>
    extends _$EditableUserTaskCopyWithImpl<$Res, _$EditableUserTaskImpl>
    implements _$$EditableUserTaskImplCopyWith<$Res> {
  __$$EditableUserTaskImplCopyWithImpl(_$EditableUserTaskImpl _value,
      $Res Function(_$EditableUserTaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? isCompleted = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$EditableUserTaskImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$EditableUserTaskImpl implements _EditableUserTask {
  const _$EditableUserTaskImpl(
      {required this.id,
      this.title,
      this.description,
      this.isCompleted = false,
      this.createdAt,
      this.updatedAt});

  @override
  final String id;
  @override
  final String? title;
  @override
  final String? description;
  @override
  @JsonKey()
  final bool isCompleted;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'EditableUserTask(id: $id, title: $title, description: $description, isCompleted: $isCompleted, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditableUserTaskImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, description, isCompleted, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditableUserTaskImplCopyWith<_$EditableUserTaskImpl> get copyWith =>
      __$$EditableUserTaskImplCopyWithImpl<_$EditableUserTaskImpl>(
          this, _$identity);
}

abstract class _EditableUserTask implements EditableUserTask {
  const factory _EditableUserTask(
      {required final String id,
      final String? title,
      final String? description,
      final bool isCompleted,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$EditableUserTaskImpl;

  @override
  String get id;
  @override
  String? get title;
  @override
  String? get description;
  @override
  bool get isCompleted;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$EditableUserTaskImplCopyWith<_$EditableUserTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
