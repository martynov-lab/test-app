import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_entity.freezed.dart';
part 'form_entity.g.dart';

@freezed
class FormEntity with _$FormEntity {
  const factory FormEntity({
    @Default(true) bool isObscure,
    @Default(true) bool isFormValid,
    String? errorMessage,
  }) = _FormEntity;

  factory FormEntity.fromJson(Map<String, dynamic> json) =>
      _$FormEntityFromJson(json);
}
