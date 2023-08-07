// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FormEntity _$$_FormEntityFromJson(Map<String, dynamic> json) =>
    _$_FormEntity(
      isObscure: json['isObscure'] as bool? ?? true,
      isFormValid: json['isFormValid'] as bool? ?? true,
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$$_FormEntityToJson(_$_FormEntity instance) =>
    <String, dynamic>{
      'isObscure': instance.isObscure,
      'isFormValid': instance.isFormValid,
      'errorMessage': instance.errorMessage,
    };
