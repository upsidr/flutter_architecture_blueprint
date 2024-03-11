// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alert_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AlertState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? title, String message) okDialog,
    required TResult Function() silent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? title, String message)? okDialog,
    TResult? Function()? silent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? title, String message)? okDialog,
    TResult Function()? silent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OkDialog value) okDialog,
    required TResult Function(Silent value) silent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OkDialog value)? okDialog,
    TResult? Function(Silent value)? silent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OkDialog value)? okDialog,
    TResult Function(Silent value)? silent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlertStateCopyWith<$Res> {
  factory $AlertStateCopyWith(
          AlertState value, $Res Function(AlertState) then) =
      _$AlertStateCopyWithImpl<$Res, AlertState>;
}

/// @nodoc
class _$AlertStateCopyWithImpl<$Res, $Val extends AlertState>
    implements $AlertStateCopyWith<$Res> {
  _$AlertStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OkDialogImplCopyWith<$Res> {
  factory _$$OkDialogImplCopyWith(
          _$OkDialogImpl value, $Res Function(_$OkDialogImpl) then) =
      __$$OkDialogImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? title, String message});
}

/// @nodoc
class __$$OkDialogImplCopyWithImpl<$Res>
    extends _$AlertStateCopyWithImpl<$Res, _$OkDialogImpl>
    implements _$$OkDialogImplCopyWith<$Res> {
  __$$OkDialogImplCopyWithImpl(
      _$OkDialogImpl _value, $Res Function(_$OkDialogImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? message = null,
  }) {
    return _then(_$OkDialogImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OkDialogImpl implements OkDialog {
  const _$OkDialogImpl({this.title, required this.message});

  @override
  final String? title;
  @override
  final String message;

  @override
  String toString() {
    return 'AlertState.okDialog(title: $title, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OkDialogImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OkDialogImplCopyWith<_$OkDialogImpl> get copyWith =>
      __$$OkDialogImplCopyWithImpl<_$OkDialogImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? title, String message) okDialog,
    required TResult Function() silent,
  }) {
    return okDialog(title, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? title, String message)? okDialog,
    TResult? Function()? silent,
  }) {
    return okDialog?.call(title, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? title, String message)? okDialog,
    TResult Function()? silent,
    required TResult orElse(),
  }) {
    if (okDialog != null) {
      return okDialog(title, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OkDialog value) okDialog,
    required TResult Function(Silent value) silent,
  }) {
    return okDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OkDialog value)? okDialog,
    TResult? Function(Silent value)? silent,
  }) {
    return okDialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OkDialog value)? okDialog,
    TResult Function(Silent value)? silent,
    required TResult orElse(),
  }) {
    if (okDialog != null) {
      return okDialog(this);
    }
    return orElse();
  }
}

abstract class OkDialog implements AlertState {
  const factory OkDialog({final String? title, required final String message}) =
      _$OkDialogImpl;

  String? get title;
  String get message;
  @JsonKey(ignore: true)
  _$$OkDialogImplCopyWith<_$OkDialogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SilentImplCopyWith<$Res> {
  factory _$$SilentImplCopyWith(
          _$SilentImpl value, $Res Function(_$SilentImpl) then) =
      __$$SilentImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SilentImplCopyWithImpl<$Res>
    extends _$AlertStateCopyWithImpl<$Res, _$SilentImpl>
    implements _$$SilentImplCopyWith<$Res> {
  __$$SilentImplCopyWithImpl(
      _$SilentImpl _value, $Res Function(_$SilentImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SilentImpl implements Silent {
  const _$SilentImpl();

  @override
  String toString() {
    return 'AlertState.silent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SilentImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? title, String message) okDialog,
    required TResult Function() silent,
  }) {
    return silent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? title, String message)? okDialog,
    TResult? Function()? silent,
  }) {
    return silent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? title, String message)? okDialog,
    TResult Function()? silent,
    required TResult orElse(),
  }) {
    if (silent != null) {
      return silent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OkDialog value) okDialog,
    required TResult Function(Silent value) silent,
  }) {
    return silent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OkDialog value)? okDialog,
    TResult? Function(Silent value)? silent,
  }) {
    return silent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OkDialog value)? okDialog,
    TResult Function(Silent value)? silent,
    required TResult orElse(),
  }) {
    if (silent != null) {
      return silent(this);
    }
    return orElse();
  }
}

abstract class Silent implements AlertState {
  const factory Silent() = _$SilentImpl;
}
