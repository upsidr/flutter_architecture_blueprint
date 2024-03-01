// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TodoRepositoryException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() taskNotFound,
    required TResult Function(Exception detail) other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? taskNotFound,
    TResult? Function(Exception detail)? other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? taskNotFound,
    TResult Function(Exception detail)? other,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskNotFound value) taskNotFound,
    required TResult Function(Other value) other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskNotFound value)? taskNotFound,
    TResult? Function(Other value)? other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskNotFound value)? taskNotFound,
    TResult Function(Other value)? other,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoRepositoryExceptionCopyWith<$Res> {
  factory $TodoRepositoryExceptionCopyWith(TodoRepositoryException value,
          $Res Function(TodoRepositoryException) then) =
      _$TodoRepositoryExceptionCopyWithImpl<$Res, TodoRepositoryException>;
}

/// @nodoc
class _$TodoRepositoryExceptionCopyWithImpl<$Res,
        $Val extends TodoRepositoryException>
    implements $TodoRepositoryExceptionCopyWith<$Res> {
  _$TodoRepositoryExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TaskNotFoundImplCopyWith<$Res> {
  factory _$$TaskNotFoundImplCopyWith(
          _$TaskNotFoundImpl value, $Res Function(_$TaskNotFoundImpl) then) =
      __$$TaskNotFoundImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TaskNotFoundImplCopyWithImpl<$Res>
    extends _$TodoRepositoryExceptionCopyWithImpl<$Res, _$TaskNotFoundImpl>
    implements _$$TaskNotFoundImplCopyWith<$Res> {
  __$$TaskNotFoundImplCopyWithImpl(
      _$TaskNotFoundImpl _value, $Res Function(_$TaskNotFoundImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TaskNotFoundImpl implements TaskNotFound {
  const _$TaskNotFoundImpl();

  @override
  String toString() {
    return 'TodoRepositoryException.taskNotFound()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TaskNotFoundImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() taskNotFound,
    required TResult Function(Exception detail) other,
  }) {
    return taskNotFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? taskNotFound,
    TResult? Function(Exception detail)? other,
  }) {
    return taskNotFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? taskNotFound,
    TResult Function(Exception detail)? other,
    required TResult orElse(),
  }) {
    if (taskNotFound != null) {
      return taskNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskNotFound value) taskNotFound,
    required TResult Function(Other value) other,
  }) {
    return taskNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskNotFound value)? taskNotFound,
    TResult? Function(Other value)? other,
  }) {
    return taskNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskNotFound value)? taskNotFound,
    TResult Function(Other value)? other,
    required TResult orElse(),
  }) {
    if (taskNotFound != null) {
      return taskNotFound(this);
    }
    return orElse();
  }
}

abstract class TaskNotFound implements TodoRepositoryException {
  const factory TaskNotFound() = _$TaskNotFoundImpl;
}

/// @nodoc
abstract class _$$OtherImplCopyWith<$Res> {
  factory _$$OtherImplCopyWith(
          _$OtherImpl value, $Res Function(_$OtherImpl) then) =
      __$$OtherImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Exception detail});
}

/// @nodoc
class __$$OtherImplCopyWithImpl<$Res>
    extends _$TodoRepositoryExceptionCopyWithImpl<$Res, _$OtherImpl>
    implements _$$OtherImplCopyWith<$Res> {
  __$$OtherImplCopyWithImpl(
      _$OtherImpl _value, $Res Function(_$OtherImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detail = null,
  }) {
    return _then(_$OtherImpl(
      null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$OtherImpl implements Other {
  const _$OtherImpl(this.detail);

  @override
  final Exception detail;

  @override
  String toString() {
    return 'TodoRepositoryException.other(detail: $detail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtherImpl &&
            (identical(other.detail, detail) || other.detail == detail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, detail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtherImplCopyWith<_$OtherImpl> get copyWith =>
      __$$OtherImplCopyWithImpl<_$OtherImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() taskNotFound,
    required TResult Function(Exception detail) other,
  }) {
    return other(detail);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? taskNotFound,
    TResult? Function(Exception detail)? other,
  }) {
    return other?.call(detail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? taskNotFound,
    TResult Function(Exception detail)? other,
    required TResult orElse(),
  }) {
    if (other != null) {
      return other(detail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskNotFound value) taskNotFound,
    required TResult Function(Other value) other,
  }) {
    return other(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskNotFound value)? taskNotFound,
    TResult? Function(Other value)? other,
  }) {
    return other?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskNotFound value)? taskNotFound,
    TResult Function(Other value)? other,
    required TResult orElse(),
  }) {
    if (other != null) {
      return other(this);
    }
    return orElse();
  }
}

abstract class Other implements TodoRepositoryException {
  const factory Other(final Exception detail) = _$OtherImpl;

  Exception get detail;
  @JsonKey(ignore: true)
  _$$OtherImplCopyWith<_$OtherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
