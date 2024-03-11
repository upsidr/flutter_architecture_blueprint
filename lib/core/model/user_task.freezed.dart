// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserTask _$UserTaskFromJson(Map<String, dynamic> json) {
  return _UserTask.fromJson(json);
}

/// @nodoc
mixin _$UserTask {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserTaskCopyWith<UserTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserTaskCopyWith<$Res> {
  factory $UserTaskCopyWith(UserTask value, $Res Function(UserTask) then) =
      _$UserTaskCopyWithImpl<$Res, UserTask>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      bool isCompleted,
      DateTime createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$UserTaskCopyWithImpl<$Res, $Val extends UserTask>
    implements $UserTaskCopyWith<$Res> {
  _$UserTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? isCompleted = null,
    Object? createdAt = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserTaskImplCopyWith<$Res>
    implements $UserTaskCopyWith<$Res> {
  factory _$$UserTaskImplCopyWith(
          _$UserTaskImpl value, $Res Function(_$UserTaskImpl) then) =
      __$$UserTaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      bool isCompleted,
      DateTime createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$$UserTaskImplCopyWithImpl<$Res>
    extends _$UserTaskCopyWithImpl<$Res, _$UserTaskImpl>
    implements _$$UserTaskImplCopyWith<$Res> {
  __$$UserTaskImplCopyWithImpl(
      _$UserTaskImpl _value, $Res Function(_$UserTaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? isCompleted = null,
    Object? createdAt = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_$UserTaskImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserTaskImpl implements _UserTask {
  const _$UserTaskImpl(
      {required this.id,
      required this.title,
      this.description = '',
      this.isCompleted = false,
      required this.createdAt,
      this.updatedAt});

  factory _$UserTaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserTaskImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final bool isCompleted;
  @override
  final DateTime createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'UserTask(id: $id, title: $title, description: $description, isCompleted: $isCompleted, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserTaskImpl &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, description, isCompleted, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserTaskImplCopyWith<_$UserTaskImpl> get copyWith =>
      __$$UserTaskImplCopyWithImpl<_$UserTaskImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserTaskImplToJson(
      this,
    );
  }
}

abstract class _UserTask implements UserTask {
  const factory _UserTask(
      {required final String id,
      required final String title,
      final String description,
      final bool isCompleted,
      required final DateTime createdAt,
      final DateTime? updatedAt}) = _$UserTaskImpl;

  factory _UserTask.fromJson(Map<String, dynamic> json) =
      _$UserTaskImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  bool get isCompleted;
  @override
  DateTime get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$UserTaskImplCopyWith<_$UserTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
