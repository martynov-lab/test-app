// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FormEntity _$FormEntityFromJson(Map<String, dynamic> json) {
  return _FormEntity.fromJson(json);
}

/// @nodoc
mixin _$FormEntity {
  bool get isObscure => throw _privateConstructorUsedError;
  bool get isFormValid => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FormEntityCopyWith<FormEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormEntityCopyWith<$Res> {
  factory $FormEntityCopyWith(
          FormEntity value, $Res Function(FormEntity) then) =
      _$FormEntityCopyWithImpl<$Res, FormEntity>;
  @useResult
  $Res call({bool isObscure, bool isFormValid, String? errorMessage});
}

/// @nodoc
class _$FormEntityCopyWithImpl<$Res, $Val extends FormEntity>
    implements $FormEntityCopyWith<$Res> {
  _$FormEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isObscure = null,
    Object? isFormValid = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      isObscure: null == isObscure
          ? _value.isObscure
          : isObscure // ignore: cast_nullable_to_non_nullable
              as bool,
      isFormValid: null == isFormValid
          ? _value.isFormValid
          : isFormValid // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FormEntityCopyWith<$Res>
    implements $FormEntityCopyWith<$Res> {
  factory _$$_FormEntityCopyWith(
          _$_FormEntity value, $Res Function(_$_FormEntity) then) =
      __$$_FormEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isObscure, bool isFormValid, String? errorMessage});
}

/// @nodoc
class __$$_FormEntityCopyWithImpl<$Res>
    extends _$FormEntityCopyWithImpl<$Res, _$_FormEntity>
    implements _$$_FormEntityCopyWith<$Res> {
  __$$_FormEntityCopyWithImpl(
      _$_FormEntity _value, $Res Function(_$_FormEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isObscure = null,
    Object? isFormValid = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_FormEntity(
      isObscure: null == isObscure
          ? _value.isObscure
          : isObscure // ignore: cast_nullable_to_non_nullable
              as bool,
      isFormValid: null == isFormValid
          ? _value.isFormValid
          : isFormValid // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FormEntity implements _FormEntity {
  const _$_FormEntity(
      {this.isObscure = true, this.isFormValid = true, this.errorMessage});

  factory _$_FormEntity.fromJson(Map<String, dynamic> json) =>
      _$$_FormEntityFromJson(json);

  @override
  @JsonKey()
  final bool isObscure;
  @override
  @JsonKey()
  final bool isFormValid;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'FormEntity(isObscure: $isObscure, isFormValid: $isFormValid, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FormEntity &&
            (identical(other.isObscure, isObscure) ||
                other.isObscure == isObscure) &&
            (identical(other.isFormValid, isFormValid) ||
                other.isFormValid == isFormValid) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, isObscure, isFormValid, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FormEntityCopyWith<_$_FormEntity> get copyWith =>
      __$$_FormEntityCopyWithImpl<_$_FormEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FormEntityToJson(
      this,
    );
  }
}

abstract class _FormEntity implements FormEntity {
  const factory _FormEntity(
      {final bool isObscure,
      final bool isFormValid,
      final String? errorMessage}) = _$_FormEntity;

  factory _FormEntity.fromJson(Map<String, dynamic> json) =
      _$_FormEntity.fromJson;

  @override
  bool get isObscure;
  @override
  bool get isFormValid;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_FormEntityCopyWith<_$_FormEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
