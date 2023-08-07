// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'input_pin_bloc.dart';

// @freezed
// class InputPinState with _$InputPinState {
//   const factory InputPinState({
//     @Default('') pin,
//     @Default(false) bool isPinValid,
//     String? errorMessage,
//   }) = _InputPinState;
// }

class InputPinState {
  final String? pin;
  final bool isPinValid;
  final String? errorMessage;

  const InputPinState({
    this.pin,
    this.isPinValid = false,
    this.errorMessage,
  });

  InputPinState copyWith({
    String? pin,
    bool? isPinValid,
    String? errorMessage,
  }) {
    return InputPinState(
      pin: pin ?? this.pin,
      isPinValid: isPinValid ?? this.isPinValid,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
