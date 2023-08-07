part of 'input_pin_bloc.dart';

@freezed
class InputPinState with _$InputPinState {
  const factory InputPinState({
    @Default('') pin,
    @Default(false) bool isPinValid,
    String? errorMessage,
  }) = _InputPinState;
}
