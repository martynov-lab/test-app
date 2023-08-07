// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InputLoginEvent {
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
    required TResult Function(_InputLoginEventChanged value) changed,
    required TResult Function(_InputLoginEventUnfocused value) unfocused,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InputLoginEventChanged value)? changed,
    TResult? Function(_InputLoginEventUnfocused value)? unfocused,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InputLoginEventChanged value)? changed,
    TResult Function(_InputLoginEventUnfocused value)? unfocused,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputLoginEventCopyWith<$Res> {
  factory $InputLoginEventCopyWith(
          InputLoginEvent value, $Res Function(InputLoginEvent) then) =
      _$InputLoginEventCopyWithImpl<$Res, InputLoginEvent>;
}

/// @nodoc
class _$InputLoginEventCopyWithImpl<$Res, $Val extends InputLoginEvent>
    implements $InputLoginEventCopyWith<$Res> {
  _$InputLoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InputLoginEventChangedCopyWith<$Res> {
  factory _$$_InputLoginEventChangedCopyWith(_$_InputLoginEventChanged value,
          $Res Function(_$_InputLoginEventChanged) then) =
      __$$_InputLoginEventChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_InputLoginEventChangedCopyWithImpl<$Res>
    extends _$InputLoginEventCopyWithImpl<$Res, _$_InputLoginEventChanged>
    implements _$$_InputLoginEventChangedCopyWith<$Res> {
  __$$_InputLoginEventChangedCopyWithImpl(_$_InputLoginEventChanged _value,
      $Res Function(_$_InputLoginEventChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_InputLoginEventChanged(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InputLoginEventChanged extends _InputLoginEventChanged {
  _$_InputLoginEventChanged(this.value) : super._();

  @override
  final String value;

  @override
  String toString() {
    return 'InputLoginEvent.changed(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InputLoginEventChanged &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InputLoginEventChangedCopyWith<_$_InputLoginEventChanged> get copyWith =>
      __$$_InputLoginEventChangedCopyWithImpl<_$_InputLoginEventChanged>(
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
    required TResult Function(_InputLoginEventChanged value) changed,
    required TResult Function(_InputLoginEventUnfocused value) unfocused,
  }) {
    return changed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InputLoginEventChanged value)? changed,
    TResult? Function(_InputLoginEventUnfocused value)? unfocused,
  }) {
    return changed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InputLoginEventChanged value)? changed,
    TResult Function(_InputLoginEventUnfocused value)? unfocused,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(this);
    }
    return orElse();
  }
}

abstract class _InputLoginEventChanged extends InputLoginEvent {
  factory _InputLoginEventChanged(final String value) =
      _$_InputLoginEventChanged;
  _InputLoginEventChanged._() : super._();

  String get value;
  @JsonKey(ignore: true)
  _$$_InputLoginEventChangedCopyWith<_$_InputLoginEventChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InputLoginEventUnfocusedCopyWith<$Res> {
  factory _$$_InputLoginEventUnfocusedCopyWith(
          _$_InputLoginEventUnfocused value,
          $Res Function(_$_InputLoginEventUnfocused) then) =
      __$$_InputLoginEventUnfocusedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InputLoginEventUnfocusedCopyWithImpl<$Res>
    extends _$InputLoginEventCopyWithImpl<$Res, _$_InputLoginEventUnfocused>
    implements _$$_InputLoginEventUnfocusedCopyWith<$Res> {
  __$$_InputLoginEventUnfocusedCopyWithImpl(_$_InputLoginEventUnfocused _value,
      $Res Function(_$_InputLoginEventUnfocused) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InputLoginEventUnfocused extends _InputLoginEventUnfocused {
  _$_InputLoginEventUnfocused() : super._();

  @override
  String toString() {
    return 'InputLoginEvent.unfocused()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InputLoginEventUnfocused);
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
    required TResult Function(_InputLoginEventChanged value) changed,
    required TResult Function(_InputLoginEventUnfocused value) unfocused,
  }) {
    return unfocused(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InputLoginEventChanged value)? changed,
    TResult? Function(_InputLoginEventUnfocused value)? unfocused,
  }) {
    return unfocused?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InputLoginEventChanged value)? changed,
    TResult Function(_InputLoginEventUnfocused value)? unfocused,
    required TResult orElse(),
  }) {
    if (unfocused != null) {
      return unfocused(this);
    }
    return orElse();
  }
}

abstract class _InputLoginEventUnfocused extends InputLoginEvent {
  factory _InputLoginEventUnfocused() = _$_InputLoginEventUnfocused;
  _InputLoginEventUnfocused._() : super._();
}

/// @nodoc
mixin _$InputLoginState {
  dynamic get login => throw _privateConstructorUsedError;
  bool get isLoginValid => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InputLoginStateCopyWith<InputLoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputLoginStateCopyWith<$Res> {
  factory $InputLoginStateCopyWith(
          InputLoginState value, $Res Function(InputLoginState) then) =
      _$InputLoginStateCopyWithImpl<$Res, InputLoginState>;
  @useResult
  $Res call({dynamic login, bool isLoginValid, String? errorMessage});
}

/// @nodoc
class _$InputLoginStateCopyWithImpl<$Res, $Val extends InputLoginState>
    implements $InputLoginStateCopyWith<$Res> {
  _$InputLoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = freezed,
    Object? isLoginValid = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      login: freezed == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isLoginValid: null == isLoginValid
          ? _value.isLoginValid
          : isLoginValid // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InputLoginStateCopyWith<$Res>
    implements $InputLoginStateCopyWith<$Res> {
  factory _$$_InputLoginStateCopyWith(
          _$_InputLoginState value, $Res Function(_$_InputLoginState) then) =
      __$$_InputLoginStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic login, bool isLoginValid, String? errorMessage});
}

/// @nodoc
class __$$_InputLoginStateCopyWithImpl<$Res>
    extends _$InputLoginStateCopyWithImpl<$Res, _$_InputLoginState>
    implements _$$_InputLoginStateCopyWith<$Res> {
  __$$_InputLoginStateCopyWithImpl(
      _$_InputLoginState _value, $Res Function(_$_InputLoginState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = freezed,
    Object? isLoginValid = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_InputLoginState(
      login: freezed == login ? _value.login! : login,
      isLoginValid: null == isLoginValid
          ? _value.isLoginValid
          : isLoginValid // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_InputLoginState implements _InputLoginState {
  const _$_InputLoginState(
      {this.login = '', this.isLoginValid = false, this.errorMessage});

  @override
  @JsonKey()
  final dynamic login;
  @override
  @JsonKey()
  final bool isLoginValid;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'InputLoginState(login: $login, isLoginValid: $isLoginValid, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InputLoginState &&
            const DeepCollectionEquality().equals(other.login, login) &&
            (identical(other.isLoginValid, isLoginValid) ||
                other.isLoginValid == isLoginValid) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(login), isLoginValid, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InputLoginStateCopyWith<_$_InputLoginState> get copyWith =>
      __$$_InputLoginStateCopyWithImpl<_$_InputLoginState>(this, _$identity);
}

abstract class _InputLoginState implements InputLoginState {
  const factory _InputLoginState(
      {final dynamic login,
      final bool isLoginValid,
      final String? errorMessage}) = _$_InputLoginState;

  @override
  dynamic get login;
  @override
  bool get isLoginValid;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_InputLoginStateCopyWith<_$_InputLoginState> get copyWith =>
      throw _privateConstructorUsedError;
}
