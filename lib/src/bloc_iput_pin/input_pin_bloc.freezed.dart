// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_pin_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InputPinState {
  dynamic get pin => throw _privateConstructorUsedError;
  bool get isPinValid => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InputPinStateCopyWith<InputPinState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputPinStateCopyWith<$Res> {
  factory $InputPinStateCopyWith(
          InputPinState value, $Res Function(InputPinState) then) =
      _$InputPinStateCopyWithImpl<$Res, InputPinState>;
  @useResult
  $Res call({dynamic pin, bool isPinValid, String? errorMessage});
}

/// @nodoc
class _$InputPinStateCopyWithImpl<$Res, $Val extends InputPinState>
    implements $InputPinStateCopyWith<$Res> {
  _$InputPinStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pin = freezed,
    Object? isPinValid = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      pin: freezed == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isPinValid: null == isPinValid
          ? _value.isPinValid
          : isPinValid // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InputPinStateCopyWith<$Res>
    implements $InputPinStateCopyWith<$Res> {
  factory _$$_InputPinStateCopyWith(
          _$_InputPinState value, $Res Function(_$_InputPinState) then) =
      __$$_InputPinStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic pin, bool isPinValid, String? errorMessage});
}

/// @nodoc
class __$$_InputPinStateCopyWithImpl<$Res>
    extends _$InputPinStateCopyWithImpl<$Res, _$_InputPinState>
    implements _$$_InputPinStateCopyWith<$Res> {
  __$$_InputPinStateCopyWithImpl(
      _$_InputPinState _value, $Res Function(_$_InputPinState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pin = freezed,
    Object? isPinValid = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_InputPinState(
      pin: freezed == pin ? _value.pin! : pin,
      isPinValid: null == isPinValid
          ? _value.isPinValid
          : isPinValid // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_InputPinState implements _InputPinState {
  const _$_InputPinState(
      {this.pin = '', this.isPinValid = false, this.errorMessage});

  @override
  @JsonKey()
  final dynamic pin;
  @override
  @JsonKey()
  final bool isPinValid;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'InputPinState(pin: $pin, isPinValid: $isPinValid, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InputPinState &&
            const DeepCollectionEquality().equals(other.pin, pin) &&
            (identical(other.isPinValid, isPinValid) ||
                other.isPinValid == isPinValid) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(pin), isPinValid, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InputPinStateCopyWith<_$_InputPinState> get copyWith =>
      __$$_InputPinStateCopyWithImpl<_$_InputPinState>(this, _$identity);
}

abstract class _InputPinState implements InputPinState {
  const factory _InputPinState(
      {final dynamic pin,
      final bool isPinValid,
      final String? errorMessage}) = _$_InputPinState;

  @override
  dynamic get pin;
  @override
  bool get isPinValid;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_InputPinStateCopyWith<_$_InputPinState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$InputPinEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) changed,
    required TResult Function() unfocused,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? changed,
    TResult? Function()? unfocused,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? changed,
    TResult Function()? unfocused,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InputPinEventChanged value) changed,
    required TResult Function(_InputPinEventUnfocused value) unfocused,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InputPinEventChanged value)? changed,
    TResult? Function(_InputPinEventUnfocused value)? unfocused,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InputPinEventChanged value)? changed,
    TResult Function(_InputPinEventUnfocused value)? unfocused,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputPinEventCopyWith<$Res> {
  factory $InputPinEventCopyWith(
          InputPinEvent value, $Res Function(InputPinEvent) then) =
      _$InputPinEventCopyWithImpl<$Res, InputPinEvent>;
}

/// @nodoc
class _$InputPinEventCopyWithImpl<$Res, $Val extends InputPinEvent>
    implements $InputPinEventCopyWith<$Res> {
  _$InputPinEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InputPinEventChangedCopyWith<$Res> {
  factory _$$_InputPinEventChangedCopyWith(_$_InputPinEventChanged value,
          $Res Function(_$_InputPinEventChanged) then) =
      __$$_InputPinEventChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_InputPinEventChangedCopyWithImpl<$Res>
    extends _$InputPinEventCopyWithImpl<$Res, _$_InputPinEventChanged>
    implements _$$_InputPinEventChangedCopyWith<$Res> {
  __$$_InputPinEventChangedCopyWithImpl(_$_InputPinEventChanged _value,
      $Res Function(_$_InputPinEventChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_InputPinEventChanged(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InputPinEventChanged extends _InputPinEventChanged {
  _$_InputPinEventChanged(this.value) : super._();

  @override
  final String value;

  @override
  String toString() {
    return 'InputPinEvent.changed(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InputPinEventChanged &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InputPinEventChangedCopyWith<_$_InputPinEventChanged> get copyWith =>
      __$$_InputPinEventChangedCopyWithImpl<_$_InputPinEventChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) changed,
    required TResult Function() unfocused,
  }) {
    return changed(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? changed,
    TResult? Function()? unfocused,
  }) {
    return changed?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? changed,
    TResult Function()? unfocused,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InputPinEventChanged value) changed,
    required TResult Function(_InputPinEventUnfocused value) unfocused,
  }) {
    return changed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InputPinEventChanged value)? changed,
    TResult? Function(_InputPinEventUnfocused value)? unfocused,
  }) {
    return changed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InputPinEventChanged value)? changed,
    TResult Function(_InputPinEventUnfocused value)? unfocused,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(this);
    }
    return orElse();
  }
}

abstract class _InputPinEventChanged extends InputPinEvent {
  factory _InputPinEventChanged(final String value) = _$_InputPinEventChanged;
  _InputPinEventChanged._() : super._();

  String get value;
  @JsonKey(ignore: true)
  _$$_InputPinEventChangedCopyWith<_$_InputPinEventChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InputPinEventUnfocusedCopyWith<$Res> {
  factory _$$_InputPinEventUnfocusedCopyWith(_$_InputPinEventUnfocused value,
          $Res Function(_$_InputPinEventUnfocused) then) =
      __$$_InputPinEventUnfocusedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InputPinEventUnfocusedCopyWithImpl<$Res>
    extends _$InputPinEventCopyWithImpl<$Res, _$_InputPinEventUnfocused>
    implements _$$_InputPinEventUnfocusedCopyWith<$Res> {
  __$$_InputPinEventUnfocusedCopyWithImpl(_$_InputPinEventUnfocused _value,
      $Res Function(_$_InputPinEventUnfocused) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InputPinEventUnfocused extends _InputPinEventUnfocused {
  _$_InputPinEventUnfocused() : super._();

  @override
  String toString() {
    return 'InputPinEvent.unfocused()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InputPinEventUnfocused);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) changed,
    required TResult Function() unfocused,
  }) {
    return unfocused();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? changed,
    TResult? Function()? unfocused,
  }) {
    return unfocused?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? changed,
    TResult Function()? unfocused,
    required TResult orElse(),
  }) {
    if (unfocused != null) {
      return unfocused();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InputPinEventChanged value) changed,
    required TResult Function(_InputPinEventUnfocused value) unfocused,
  }) {
    return unfocused(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InputPinEventChanged value)? changed,
    TResult? Function(_InputPinEventUnfocused value)? unfocused,
  }) {
    return unfocused?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InputPinEventChanged value)? changed,
    TResult Function(_InputPinEventUnfocused value)? unfocused,
    required TResult orElse(),
  }) {
    if (unfocused != null) {
      return unfocused(this);
    }
    return orElse();
  }
}

abstract class _InputPinEventUnfocused extends InputPinEvent {
  factory _InputPinEventUnfocused() = _$_InputPinEventUnfocused;
  _InputPinEventUnfocused._() : super._();
}
