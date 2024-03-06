// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_task_contract.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EditTaskUiState {
  EditableUserTask get item => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditTaskUiStateCopyWith<EditTaskUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditTaskUiStateCopyWith<$Res> {
  factory $EditTaskUiStateCopyWith(
          EditTaskUiState value, $Res Function(EditTaskUiState) then) =
      _$EditTaskUiStateCopyWithImpl<$Res, EditTaskUiState>;
  @useResult
  $Res call({EditableUserTask item});

  $EditableUserTaskCopyWith<$Res> get item;
}

/// @nodoc
class _$EditTaskUiStateCopyWithImpl<$Res, $Val extends EditTaskUiState>
    implements $EditTaskUiStateCopyWith<$Res> {
  _$EditTaskUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_value.copyWith(
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as EditableUserTask,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EditableUserTaskCopyWith<$Res> get item {
    return $EditableUserTaskCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EditTaskUiStateImplCopyWith<$Res>
    implements $EditTaskUiStateCopyWith<$Res> {
  factory _$$EditTaskUiStateImplCopyWith(_$EditTaskUiStateImpl value,
          $Res Function(_$EditTaskUiStateImpl) then) =
      __$$EditTaskUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EditableUserTask item});

  @override
  $EditableUserTaskCopyWith<$Res> get item;
}

/// @nodoc
class __$$EditTaskUiStateImplCopyWithImpl<$Res>
    extends _$EditTaskUiStateCopyWithImpl<$Res, _$EditTaskUiStateImpl>
    implements _$$EditTaskUiStateImplCopyWith<$Res> {
  __$$EditTaskUiStateImplCopyWithImpl(
      _$EditTaskUiStateImpl _value, $Res Function(_$EditTaskUiStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_$EditTaskUiStateImpl(
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as EditableUserTask,
    ));
  }
}

/// @nodoc

class _$EditTaskUiStateImpl implements _EditTaskUiState {
  const _$EditTaskUiStateImpl({required this.item});

  @override
  final EditableUserTask item;

  @override
  String toString() {
    return 'EditTaskUiState(item: $item)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditTaskUiStateImpl &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditTaskUiStateImplCopyWith<_$EditTaskUiStateImpl> get copyWith =>
      __$$EditTaskUiStateImplCopyWithImpl<_$EditTaskUiStateImpl>(
          this, _$identity);
}

abstract class _EditTaskUiState implements EditTaskUiState {
  const factory _EditTaskUiState({required final EditableUserTask item}) =
      _$EditTaskUiStateImpl;

  @override
  EditableUserTask get item;
  @override
  @JsonKey(ignore: true)
  _$$EditTaskUiStateImplCopyWith<_$EditTaskUiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EditTaskAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newValue) onTitleChanged,
    required TResult Function(String newValue) onDescriptionChanged,
    required TResult Function() completeButtonTapped,
    required TResult Function() uncompleteButtonTapped,
    required TResult Function() addButtonTapped,
    required TResult Function() updateButtonTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String newValue)? onTitleChanged,
    TResult? Function(String newValue)? onDescriptionChanged,
    TResult? Function()? completeButtonTapped,
    TResult? Function()? uncompleteButtonTapped,
    TResult? Function()? addButtonTapped,
    TResult? Function()? updateButtonTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newValue)? onTitleChanged,
    TResult Function(String newValue)? onDescriptionChanged,
    TResult Function()? completeButtonTapped,
    TResult Function()? uncompleteButtonTapped,
    TResult Function()? addButtonTapped,
    TResult Function()? updateButtonTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnTitleChanged value) onTitleChanged,
    required TResult Function(OnDescriptionChanged value) onDescriptionChanged,
    required TResult Function(CompleteButtonTapped value) completeButtonTapped,
    required TResult Function(UncompleteButtonTapped value)
        uncompleteButtonTapped,
    required TResult Function(AddButtonTapped value) addButtonTapped,
    required TResult Function(UpdateButtonTapped value) updateButtonTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnTitleChanged value)? onTitleChanged,
    TResult? Function(OnDescriptionChanged value)? onDescriptionChanged,
    TResult? Function(CompleteButtonTapped value)? completeButtonTapped,
    TResult? Function(UncompleteButtonTapped value)? uncompleteButtonTapped,
    TResult? Function(AddButtonTapped value)? addButtonTapped,
    TResult? Function(UpdateButtonTapped value)? updateButtonTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnTitleChanged value)? onTitleChanged,
    TResult Function(OnDescriptionChanged value)? onDescriptionChanged,
    TResult Function(CompleteButtonTapped value)? completeButtonTapped,
    TResult Function(UncompleteButtonTapped value)? uncompleteButtonTapped,
    TResult Function(AddButtonTapped value)? addButtonTapped,
    TResult Function(UpdateButtonTapped value)? updateButtonTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditTaskActionCopyWith<$Res> {
  factory $EditTaskActionCopyWith(
          EditTaskAction value, $Res Function(EditTaskAction) then) =
      _$EditTaskActionCopyWithImpl<$Res, EditTaskAction>;
}

/// @nodoc
class _$EditTaskActionCopyWithImpl<$Res, $Val extends EditTaskAction>
    implements $EditTaskActionCopyWith<$Res> {
  _$EditTaskActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OnTitleChangedImplCopyWith<$Res> {
  factory _$$OnTitleChangedImplCopyWith(_$OnTitleChangedImpl value,
          $Res Function(_$OnTitleChangedImpl) then) =
      __$$OnTitleChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String newValue});
}

/// @nodoc
class __$$OnTitleChangedImplCopyWithImpl<$Res>
    extends _$EditTaskActionCopyWithImpl<$Res, _$OnTitleChangedImpl>
    implements _$$OnTitleChangedImplCopyWith<$Res> {
  __$$OnTitleChangedImplCopyWithImpl(
      _$OnTitleChangedImpl _value, $Res Function(_$OnTitleChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newValue = null,
  }) {
    return _then(_$OnTitleChangedImpl(
      null == newValue
          ? _value.newValue
          : newValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnTitleChangedImpl implements OnTitleChanged {
  const _$OnTitleChangedImpl(this.newValue);

  @override
  final String newValue;

  @override
  String toString() {
    return 'EditTaskAction.onTitleChanged(newValue: $newValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnTitleChangedImpl &&
            (identical(other.newValue, newValue) ||
                other.newValue == newValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnTitleChangedImplCopyWith<_$OnTitleChangedImpl> get copyWith =>
      __$$OnTitleChangedImplCopyWithImpl<_$OnTitleChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newValue) onTitleChanged,
    required TResult Function(String newValue) onDescriptionChanged,
    required TResult Function() completeButtonTapped,
    required TResult Function() uncompleteButtonTapped,
    required TResult Function() addButtonTapped,
    required TResult Function() updateButtonTapped,
  }) {
    return onTitleChanged(newValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String newValue)? onTitleChanged,
    TResult? Function(String newValue)? onDescriptionChanged,
    TResult? Function()? completeButtonTapped,
    TResult? Function()? uncompleteButtonTapped,
    TResult? Function()? addButtonTapped,
    TResult? Function()? updateButtonTapped,
  }) {
    return onTitleChanged?.call(newValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newValue)? onTitleChanged,
    TResult Function(String newValue)? onDescriptionChanged,
    TResult Function()? completeButtonTapped,
    TResult Function()? uncompleteButtonTapped,
    TResult Function()? addButtonTapped,
    TResult Function()? updateButtonTapped,
    required TResult orElse(),
  }) {
    if (onTitleChanged != null) {
      return onTitleChanged(newValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnTitleChanged value) onTitleChanged,
    required TResult Function(OnDescriptionChanged value) onDescriptionChanged,
    required TResult Function(CompleteButtonTapped value) completeButtonTapped,
    required TResult Function(UncompleteButtonTapped value)
        uncompleteButtonTapped,
    required TResult Function(AddButtonTapped value) addButtonTapped,
    required TResult Function(UpdateButtonTapped value) updateButtonTapped,
  }) {
    return onTitleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnTitleChanged value)? onTitleChanged,
    TResult? Function(OnDescriptionChanged value)? onDescriptionChanged,
    TResult? Function(CompleteButtonTapped value)? completeButtonTapped,
    TResult? Function(UncompleteButtonTapped value)? uncompleteButtonTapped,
    TResult? Function(AddButtonTapped value)? addButtonTapped,
    TResult? Function(UpdateButtonTapped value)? updateButtonTapped,
  }) {
    return onTitleChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnTitleChanged value)? onTitleChanged,
    TResult Function(OnDescriptionChanged value)? onDescriptionChanged,
    TResult Function(CompleteButtonTapped value)? completeButtonTapped,
    TResult Function(UncompleteButtonTapped value)? uncompleteButtonTapped,
    TResult Function(AddButtonTapped value)? addButtonTapped,
    TResult Function(UpdateButtonTapped value)? updateButtonTapped,
    required TResult orElse(),
  }) {
    if (onTitleChanged != null) {
      return onTitleChanged(this);
    }
    return orElse();
  }
}

abstract class OnTitleChanged implements EditTaskAction {
  const factory OnTitleChanged(final String newValue) = _$OnTitleChangedImpl;

  String get newValue;
  @JsonKey(ignore: true)
  _$$OnTitleChangedImplCopyWith<_$OnTitleChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnDescriptionChangedImplCopyWith<$Res> {
  factory _$$OnDescriptionChangedImplCopyWith(_$OnDescriptionChangedImpl value,
          $Res Function(_$OnDescriptionChangedImpl) then) =
      __$$OnDescriptionChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String newValue});
}

/// @nodoc
class __$$OnDescriptionChangedImplCopyWithImpl<$Res>
    extends _$EditTaskActionCopyWithImpl<$Res, _$OnDescriptionChangedImpl>
    implements _$$OnDescriptionChangedImplCopyWith<$Res> {
  __$$OnDescriptionChangedImplCopyWithImpl(_$OnDescriptionChangedImpl _value,
      $Res Function(_$OnDescriptionChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newValue = null,
  }) {
    return _then(_$OnDescriptionChangedImpl(
      null == newValue
          ? _value.newValue
          : newValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnDescriptionChangedImpl implements OnDescriptionChanged {
  const _$OnDescriptionChangedImpl(this.newValue);

  @override
  final String newValue;

  @override
  String toString() {
    return 'EditTaskAction.onDescriptionChanged(newValue: $newValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnDescriptionChangedImpl &&
            (identical(other.newValue, newValue) ||
                other.newValue == newValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnDescriptionChangedImplCopyWith<_$OnDescriptionChangedImpl>
      get copyWith =>
          __$$OnDescriptionChangedImplCopyWithImpl<_$OnDescriptionChangedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newValue) onTitleChanged,
    required TResult Function(String newValue) onDescriptionChanged,
    required TResult Function() completeButtonTapped,
    required TResult Function() uncompleteButtonTapped,
    required TResult Function() addButtonTapped,
    required TResult Function() updateButtonTapped,
  }) {
    return onDescriptionChanged(newValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String newValue)? onTitleChanged,
    TResult? Function(String newValue)? onDescriptionChanged,
    TResult? Function()? completeButtonTapped,
    TResult? Function()? uncompleteButtonTapped,
    TResult? Function()? addButtonTapped,
    TResult? Function()? updateButtonTapped,
  }) {
    return onDescriptionChanged?.call(newValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newValue)? onTitleChanged,
    TResult Function(String newValue)? onDescriptionChanged,
    TResult Function()? completeButtonTapped,
    TResult Function()? uncompleteButtonTapped,
    TResult Function()? addButtonTapped,
    TResult Function()? updateButtonTapped,
    required TResult orElse(),
  }) {
    if (onDescriptionChanged != null) {
      return onDescriptionChanged(newValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnTitleChanged value) onTitleChanged,
    required TResult Function(OnDescriptionChanged value) onDescriptionChanged,
    required TResult Function(CompleteButtonTapped value) completeButtonTapped,
    required TResult Function(UncompleteButtonTapped value)
        uncompleteButtonTapped,
    required TResult Function(AddButtonTapped value) addButtonTapped,
    required TResult Function(UpdateButtonTapped value) updateButtonTapped,
  }) {
    return onDescriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnTitleChanged value)? onTitleChanged,
    TResult? Function(OnDescriptionChanged value)? onDescriptionChanged,
    TResult? Function(CompleteButtonTapped value)? completeButtonTapped,
    TResult? Function(UncompleteButtonTapped value)? uncompleteButtonTapped,
    TResult? Function(AddButtonTapped value)? addButtonTapped,
    TResult? Function(UpdateButtonTapped value)? updateButtonTapped,
  }) {
    return onDescriptionChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnTitleChanged value)? onTitleChanged,
    TResult Function(OnDescriptionChanged value)? onDescriptionChanged,
    TResult Function(CompleteButtonTapped value)? completeButtonTapped,
    TResult Function(UncompleteButtonTapped value)? uncompleteButtonTapped,
    TResult Function(AddButtonTapped value)? addButtonTapped,
    TResult Function(UpdateButtonTapped value)? updateButtonTapped,
    required TResult orElse(),
  }) {
    if (onDescriptionChanged != null) {
      return onDescriptionChanged(this);
    }
    return orElse();
  }
}

abstract class OnDescriptionChanged implements EditTaskAction {
  const factory OnDescriptionChanged(final String newValue) =
      _$OnDescriptionChangedImpl;

  String get newValue;
  @JsonKey(ignore: true)
  _$$OnDescriptionChangedImplCopyWith<_$OnDescriptionChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CompleteButtonTappedImplCopyWith<$Res> {
  factory _$$CompleteButtonTappedImplCopyWith(_$CompleteButtonTappedImpl value,
          $Res Function(_$CompleteButtonTappedImpl) then) =
      __$$CompleteButtonTappedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CompleteButtonTappedImplCopyWithImpl<$Res>
    extends _$EditTaskActionCopyWithImpl<$Res, _$CompleteButtonTappedImpl>
    implements _$$CompleteButtonTappedImplCopyWith<$Res> {
  __$$CompleteButtonTappedImplCopyWithImpl(_$CompleteButtonTappedImpl _value,
      $Res Function(_$CompleteButtonTappedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CompleteButtonTappedImpl implements CompleteButtonTapped {
  const _$CompleteButtonTappedImpl();

  @override
  String toString() {
    return 'EditTaskAction.completeButtonTapped()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompleteButtonTappedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newValue) onTitleChanged,
    required TResult Function(String newValue) onDescriptionChanged,
    required TResult Function() completeButtonTapped,
    required TResult Function() uncompleteButtonTapped,
    required TResult Function() addButtonTapped,
    required TResult Function() updateButtonTapped,
  }) {
    return completeButtonTapped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String newValue)? onTitleChanged,
    TResult? Function(String newValue)? onDescriptionChanged,
    TResult? Function()? completeButtonTapped,
    TResult? Function()? uncompleteButtonTapped,
    TResult? Function()? addButtonTapped,
    TResult? Function()? updateButtonTapped,
  }) {
    return completeButtonTapped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newValue)? onTitleChanged,
    TResult Function(String newValue)? onDescriptionChanged,
    TResult Function()? completeButtonTapped,
    TResult Function()? uncompleteButtonTapped,
    TResult Function()? addButtonTapped,
    TResult Function()? updateButtonTapped,
    required TResult orElse(),
  }) {
    if (completeButtonTapped != null) {
      return completeButtonTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnTitleChanged value) onTitleChanged,
    required TResult Function(OnDescriptionChanged value) onDescriptionChanged,
    required TResult Function(CompleteButtonTapped value) completeButtonTapped,
    required TResult Function(UncompleteButtonTapped value)
        uncompleteButtonTapped,
    required TResult Function(AddButtonTapped value) addButtonTapped,
    required TResult Function(UpdateButtonTapped value) updateButtonTapped,
  }) {
    return completeButtonTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnTitleChanged value)? onTitleChanged,
    TResult? Function(OnDescriptionChanged value)? onDescriptionChanged,
    TResult? Function(CompleteButtonTapped value)? completeButtonTapped,
    TResult? Function(UncompleteButtonTapped value)? uncompleteButtonTapped,
    TResult? Function(AddButtonTapped value)? addButtonTapped,
    TResult? Function(UpdateButtonTapped value)? updateButtonTapped,
  }) {
    return completeButtonTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnTitleChanged value)? onTitleChanged,
    TResult Function(OnDescriptionChanged value)? onDescriptionChanged,
    TResult Function(CompleteButtonTapped value)? completeButtonTapped,
    TResult Function(UncompleteButtonTapped value)? uncompleteButtonTapped,
    TResult Function(AddButtonTapped value)? addButtonTapped,
    TResult Function(UpdateButtonTapped value)? updateButtonTapped,
    required TResult orElse(),
  }) {
    if (completeButtonTapped != null) {
      return completeButtonTapped(this);
    }
    return orElse();
  }
}

abstract class CompleteButtonTapped implements EditTaskAction {
  const factory CompleteButtonTapped() = _$CompleteButtonTappedImpl;
}

/// @nodoc
abstract class _$$UncompleteButtonTappedImplCopyWith<$Res> {
  factory _$$UncompleteButtonTappedImplCopyWith(
          _$UncompleteButtonTappedImpl value,
          $Res Function(_$UncompleteButtonTappedImpl) then) =
      __$$UncompleteButtonTappedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UncompleteButtonTappedImplCopyWithImpl<$Res>
    extends _$EditTaskActionCopyWithImpl<$Res, _$UncompleteButtonTappedImpl>
    implements _$$UncompleteButtonTappedImplCopyWith<$Res> {
  __$$UncompleteButtonTappedImplCopyWithImpl(
      _$UncompleteButtonTappedImpl _value,
      $Res Function(_$UncompleteButtonTappedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UncompleteButtonTappedImpl implements UncompleteButtonTapped {
  const _$UncompleteButtonTappedImpl();

  @override
  String toString() {
    return 'EditTaskAction.uncompleteButtonTapped()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UncompleteButtonTappedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newValue) onTitleChanged,
    required TResult Function(String newValue) onDescriptionChanged,
    required TResult Function() completeButtonTapped,
    required TResult Function() uncompleteButtonTapped,
    required TResult Function() addButtonTapped,
    required TResult Function() updateButtonTapped,
  }) {
    return uncompleteButtonTapped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String newValue)? onTitleChanged,
    TResult? Function(String newValue)? onDescriptionChanged,
    TResult? Function()? completeButtonTapped,
    TResult? Function()? uncompleteButtonTapped,
    TResult? Function()? addButtonTapped,
    TResult? Function()? updateButtonTapped,
  }) {
    return uncompleteButtonTapped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newValue)? onTitleChanged,
    TResult Function(String newValue)? onDescriptionChanged,
    TResult Function()? completeButtonTapped,
    TResult Function()? uncompleteButtonTapped,
    TResult Function()? addButtonTapped,
    TResult Function()? updateButtonTapped,
    required TResult orElse(),
  }) {
    if (uncompleteButtonTapped != null) {
      return uncompleteButtonTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnTitleChanged value) onTitleChanged,
    required TResult Function(OnDescriptionChanged value) onDescriptionChanged,
    required TResult Function(CompleteButtonTapped value) completeButtonTapped,
    required TResult Function(UncompleteButtonTapped value)
        uncompleteButtonTapped,
    required TResult Function(AddButtonTapped value) addButtonTapped,
    required TResult Function(UpdateButtonTapped value) updateButtonTapped,
  }) {
    return uncompleteButtonTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnTitleChanged value)? onTitleChanged,
    TResult? Function(OnDescriptionChanged value)? onDescriptionChanged,
    TResult? Function(CompleteButtonTapped value)? completeButtonTapped,
    TResult? Function(UncompleteButtonTapped value)? uncompleteButtonTapped,
    TResult? Function(AddButtonTapped value)? addButtonTapped,
    TResult? Function(UpdateButtonTapped value)? updateButtonTapped,
  }) {
    return uncompleteButtonTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnTitleChanged value)? onTitleChanged,
    TResult Function(OnDescriptionChanged value)? onDescriptionChanged,
    TResult Function(CompleteButtonTapped value)? completeButtonTapped,
    TResult Function(UncompleteButtonTapped value)? uncompleteButtonTapped,
    TResult Function(AddButtonTapped value)? addButtonTapped,
    TResult Function(UpdateButtonTapped value)? updateButtonTapped,
    required TResult orElse(),
  }) {
    if (uncompleteButtonTapped != null) {
      return uncompleteButtonTapped(this);
    }
    return orElse();
  }
}

abstract class UncompleteButtonTapped implements EditTaskAction {
  const factory UncompleteButtonTapped() = _$UncompleteButtonTappedImpl;
}

/// @nodoc
abstract class _$$AddButtonTappedImplCopyWith<$Res> {
  factory _$$AddButtonTappedImplCopyWith(_$AddButtonTappedImpl value,
          $Res Function(_$AddButtonTappedImpl) then) =
      __$$AddButtonTappedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddButtonTappedImplCopyWithImpl<$Res>
    extends _$EditTaskActionCopyWithImpl<$Res, _$AddButtonTappedImpl>
    implements _$$AddButtonTappedImplCopyWith<$Res> {
  __$$AddButtonTappedImplCopyWithImpl(
      _$AddButtonTappedImpl _value, $Res Function(_$AddButtonTappedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddButtonTappedImpl implements AddButtonTapped {
  const _$AddButtonTappedImpl();

  @override
  String toString() {
    return 'EditTaskAction.addButtonTapped()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddButtonTappedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newValue) onTitleChanged,
    required TResult Function(String newValue) onDescriptionChanged,
    required TResult Function() completeButtonTapped,
    required TResult Function() uncompleteButtonTapped,
    required TResult Function() addButtonTapped,
    required TResult Function() updateButtonTapped,
  }) {
    return addButtonTapped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String newValue)? onTitleChanged,
    TResult? Function(String newValue)? onDescriptionChanged,
    TResult? Function()? completeButtonTapped,
    TResult? Function()? uncompleteButtonTapped,
    TResult? Function()? addButtonTapped,
    TResult? Function()? updateButtonTapped,
  }) {
    return addButtonTapped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newValue)? onTitleChanged,
    TResult Function(String newValue)? onDescriptionChanged,
    TResult Function()? completeButtonTapped,
    TResult Function()? uncompleteButtonTapped,
    TResult Function()? addButtonTapped,
    TResult Function()? updateButtonTapped,
    required TResult orElse(),
  }) {
    if (addButtonTapped != null) {
      return addButtonTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnTitleChanged value) onTitleChanged,
    required TResult Function(OnDescriptionChanged value) onDescriptionChanged,
    required TResult Function(CompleteButtonTapped value) completeButtonTapped,
    required TResult Function(UncompleteButtonTapped value)
        uncompleteButtonTapped,
    required TResult Function(AddButtonTapped value) addButtonTapped,
    required TResult Function(UpdateButtonTapped value) updateButtonTapped,
  }) {
    return addButtonTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnTitleChanged value)? onTitleChanged,
    TResult? Function(OnDescriptionChanged value)? onDescriptionChanged,
    TResult? Function(CompleteButtonTapped value)? completeButtonTapped,
    TResult? Function(UncompleteButtonTapped value)? uncompleteButtonTapped,
    TResult? Function(AddButtonTapped value)? addButtonTapped,
    TResult? Function(UpdateButtonTapped value)? updateButtonTapped,
  }) {
    return addButtonTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnTitleChanged value)? onTitleChanged,
    TResult Function(OnDescriptionChanged value)? onDescriptionChanged,
    TResult Function(CompleteButtonTapped value)? completeButtonTapped,
    TResult Function(UncompleteButtonTapped value)? uncompleteButtonTapped,
    TResult Function(AddButtonTapped value)? addButtonTapped,
    TResult Function(UpdateButtonTapped value)? updateButtonTapped,
    required TResult orElse(),
  }) {
    if (addButtonTapped != null) {
      return addButtonTapped(this);
    }
    return orElse();
  }
}

abstract class AddButtonTapped implements EditTaskAction {
  const factory AddButtonTapped() = _$AddButtonTappedImpl;
}

/// @nodoc
abstract class _$$UpdateButtonTappedImplCopyWith<$Res> {
  factory _$$UpdateButtonTappedImplCopyWith(_$UpdateButtonTappedImpl value,
          $Res Function(_$UpdateButtonTappedImpl) then) =
      __$$UpdateButtonTappedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateButtonTappedImplCopyWithImpl<$Res>
    extends _$EditTaskActionCopyWithImpl<$Res, _$UpdateButtonTappedImpl>
    implements _$$UpdateButtonTappedImplCopyWith<$Res> {
  __$$UpdateButtonTappedImplCopyWithImpl(_$UpdateButtonTappedImpl _value,
      $Res Function(_$UpdateButtonTappedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateButtonTappedImpl implements UpdateButtonTapped {
  const _$UpdateButtonTappedImpl();

  @override
  String toString() {
    return 'EditTaskAction.updateButtonTapped()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdateButtonTappedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newValue) onTitleChanged,
    required TResult Function(String newValue) onDescriptionChanged,
    required TResult Function() completeButtonTapped,
    required TResult Function() uncompleteButtonTapped,
    required TResult Function() addButtonTapped,
    required TResult Function() updateButtonTapped,
  }) {
    return updateButtonTapped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String newValue)? onTitleChanged,
    TResult? Function(String newValue)? onDescriptionChanged,
    TResult? Function()? completeButtonTapped,
    TResult? Function()? uncompleteButtonTapped,
    TResult? Function()? addButtonTapped,
    TResult? Function()? updateButtonTapped,
  }) {
    return updateButtonTapped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newValue)? onTitleChanged,
    TResult Function(String newValue)? onDescriptionChanged,
    TResult Function()? completeButtonTapped,
    TResult Function()? uncompleteButtonTapped,
    TResult Function()? addButtonTapped,
    TResult Function()? updateButtonTapped,
    required TResult orElse(),
  }) {
    if (updateButtonTapped != null) {
      return updateButtonTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnTitleChanged value) onTitleChanged,
    required TResult Function(OnDescriptionChanged value) onDescriptionChanged,
    required TResult Function(CompleteButtonTapped value) completeButtonTapped,
    required TResult Function(UncompleteButtonTapped value)
        uncompleteButtonTapped,
    required TResult Function(AddButtonTapped value) addButtonTapped,
    required TResult Function(UpdateButtonTapped value) updateButtonTapped,
  }) {
    return updateButtonTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnTitleChanged value)? onTitleChanged,
    TResult? Function(OnDescriptionChanged value)? onDescriptionChanged,
    TResult? Function(CompleteButtonTapped value)? completeButtonTapped,
    TResult? Function(UncompleteButtonTapped value)? uncompleteButtonTapped,
    TResult? Function(AddButtonTapped value)? addButtonTapped,
    TResult? Function(UpdateButtonTapped value)? updateButtonTapped,
  }) {
    return updateButtonTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnTitleChanged value)? onTitleChanged,
    TResult Function(OnDescriptionChanged value)? onDescriptionChanged,
    TResult Function(CompleteButtonTapped value)? completeButtonTapped,
    TResult Function(UncompleteButtonTapped value)? uncompleteButtonTapped,
    TResult Function(AddButtonTapped value)? addButtonTapped,
    TResult Function(UpdateButtonTapped value)? updateButtonTapped,
    required TResult orElse(),
  }) {
    if (updateButtonTapped != null) {
      return updateButtonTapped(this);
    }
    return orElse();
  }
}

abstract class UpdateButtonTapped implements EditTaskAction {
  const factory UpdateButtonTapped() = _$UpdateButtonTappedImpl;
}

/// @nodoc
mixin _$EditTaskEffect {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() close,
    required TResult Function(AlertState state) showAlert,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function()? close,
    TResult? Function(AlertState state)? showAlert,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? close,
    TResult Function(AlertState state)? showAlert,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(None value) none,
    required TResult Function(Close value) close,
    required TResult Function(ShowAlert value) showAlert,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(None value)? none,
    TResult? Function(Close value)? close,
    TResult? Function(ShowAlert value)? showAlert,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(None value)? none,
    TResult Function(Close value)? close,
    TResult Function(ShowAlert value)? showAlert,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditTaskEffectCopyWith<$Res> {
  factory $EditTaskEffectCopyWith(
          EditTaskEffect value, $Res Function(EditTaskEffect) then) =
      _$EditTaskEffectCopyWithImpl<$Res, EditTaskEffect>;
}

/// @nodoc
class _$EditTaskEffectCopyWithImpl<$Res, $Val extends EditTaskEffect>
    implements $EditTaskEffectCopyWith<$Res> {
  _$EditTaskEffectCopyWithImpl(this._value, this._then);

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
    extends _$EditTaskEffectCopyWithImpl<$Res, _$NoneImpl>
    implements _$$NoneImplCopyWith<$Res> {
  __$$NoneImplCopyWithImpl(_$NoneImpl _value, $Res Function(_$NoneImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoneImpl implements None {
  const _$NoneImpl();

  @override
  String toString() {
    return 'EditTaskEffect.none()';
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
    required TResult Function() close,
    required TResult Function(AlertState state) showAlert,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function()? close,
    TResult? Function(AlertState state)? showAlert,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? close,
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
    required TResult Function(Close value) close,
    required TResult Function(ShowAlert value) showAlert,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(None value)? none,
    TResult? Function(Close value)? close,
    TResult? Function(ShowAlert value)? showAlert,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(None value)? none,
    TResult Function(Close value)? close,
    TResult Function(ShowAlert value)? showAlert,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class None implements EditTaskEffect {
  const factory None() = _$NoneImpl;
}

/// @nodoc
abstract class _$$CloseImplCopyWith<$Res> {
  factory _$$CloseImplCopyWith(
          _$CloseImpl value, $Res Function(_$CloseImpl) then) =
      __$$CloseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CloseImplCopyWithImpl<$Res>
    extends _$EditTaskEffectCopyWithImpl<$Res, _$CloseImpl>
    implements _$$CloseImplCopyWith<$Res> {
  __$$CloseImplCopyWithImpl(
      _$CloseImpl _value, $Res Function(_$CloseImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CloseImpl implements Close {
  const _$CloseImpl();

  @override
  String toString() {
    return 'EditTaskEffect.close()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CloseImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() close,
    required TResult Function(AlertState state) showAlert,
  }) {
    return close();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function()? close,
    TResult? Function(AlertState state)? showAlert,
  }) {
    return close?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? close,
    TResult Function(AlertState state)? showAlert,
    required TResult orElse(),
  }) {
    if (close != null) {
      return close();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(None value) none,
    required TResult Function(Close value) close,
    required TResult Function(ShowAlert value) showAlert,
  }) {
    return close(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(None value)? none,
    TResult? Function(Close value)? close,
    TResult? Function(ShowAlert value)? showAlert,
  }) {
    return close?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(None value)? none,
    TResult Function(Close value)? close,
    TResult Function(ShowAlert value)? showAlert,
    required TResult orElse(),
  }) {
    if (close != null) {
      return close(this);
    }
    return orElse();
  }
}

abstract class Close implements EditTaskEffect {
  const factory Close() = _$CloseImpl;
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
    extends _$EditTaskEffectCopyWithImpl<$Res, _$ShowAlertImpl>
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
    return 'EditTaskEffect.showAlert(state: $state)';
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
    required TResult Function() close,
    required TResult Function(AlertState state) showAlert,
  }) {
    return showAlert(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function()? close,
    TResult? Function(AlertState state)? showAlert,
  }) {
    return showAlert?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? close,
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
    required TResult Function(Close value) close,
    required TResult Function(ShowAlert value) showAlert,
  }) {
    return showAlert(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(None value)? none,
    TResult? Function(Close value)? close,
    TResult? Function(ShowAlert value)? showAlert,
  }) {
    return showAlert?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(None value)? none,
    TResult Function(Close value)? close,
    TResult Function(ShowAlert value)? showAlert,
    required TResult orElse(),
  }) {
    if (showAlert != null) {
      return showAlert(this);
    }
    return orElse();
  }
}

abstract class ShowAlert implements EditTaskEffect {
  const factory ShowAlert({required final AlertState state}) = _$ShowAlertImpl;

  AlertState get state;
  @JsonKey(ignore: true)
  _$$ShowAlertImplCopyWith<_$ShowAlertImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
