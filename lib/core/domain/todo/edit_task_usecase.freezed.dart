// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_task_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EditTaskUseCaseException {
  AlertState get state => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AlertState state) alert,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AlertState state)? alert,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AlertState state)? alert,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Alert value) alert,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Alert value)? alert,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Alert value)? alert,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditTaskUseCaseExceptionCopyWith<EditTaskUseCaseException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditTaskUseCaseExceptionCopyWith<$Res> {
  factory $EditTaskUseCaseExceptionCopyWith(EditTaskUseCaseException value,
          $Res Function(EditTaskUseCaseException) then) =
      _$EditTaskUseCaseExceptionCopyWithImpl<$Res, EditTaskUseCaseException>;
  @useResult
  $Res call({AlertState state});

  $AlertStateCopyWith<$Res> get state;
}

/// @nodoc
class _$EditTaskUseCaseExceptionCopyWithImpl<$Res,
        $Val extends EditTaskUseCaseException>
    implements $EditTaskUseCaseExceptionCopyWith<$Res> {
  _$EditTaskUseCaseExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
  }) {
    return _then(_value.copyWith(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as AlertState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AlertStateCopyWith<$Res> get state {
    return $AlertStateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AlertImplCopyWith<$Res>
    implements $EditTaskUseCaseExceptionCopyWith<$Res> {
  factory _$$AlertImplCopyWith(
          _$AlertImpl value, $Res Function(_$AlertImpl) then) =
      __$$AlertImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AlertState state});

  @override
  $AlertStateCopyWith<$Res> get state;
}

/// @nodoc
class __$$AlertImplCopyWithImpl<$Res>
    extends _$EditTaskUseCaseExceptionCopyWithImpl<$Res, _$AlertImpl>
    implements _$$AlertImplCopyWith<$Res> {
  __$$AlertImplCopyWithImpl(
      _$AlertImpl _value, $Res Function(_$AlertImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
  }) {
    return _then(_$AlertImpl(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as AlertState,
    ));
  }
}

/// @nodoc

class _$AlertImpl implements Alert {
  const _$AlertImpl({required this.state});

  @override
  final AlertState state;

  @override
  String toString() {
    return 'EditTaskUseCaseException.alert(state: $state)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlertImpl &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlertImplCopyWith<_$AlertImpl> get copyWith =>
      __$$AlertImplCopyWithImpl<_$AlertImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AlertState state) alert,
  }) {
    return alert(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AlertState state)? alert,
  }) {
    return alert?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AlertState state)? alert,
    required TResult orElse(),
  }) {
    if (alert != null) {
      return alert(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Alert value) alert,
  }) {
    return alert(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Alert value)? alert,
  }) {
    return alert?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Alert value)? alert,
    required TResult orElse(),
  }) {
    if (alert != null) {
      return alert(this);
    }
    return orElse();
  }
}

abstract class Alert implements EditTaskUseCaseException {
  const factory Alert({required final AlertState state}) = _$AlertImpl;

  @override
  AlertState get state;
  @override
  @JsonKey(ignore: true)
  _$$AlertImplCopyWith<_$AlertImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
