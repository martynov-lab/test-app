part of 'input_pin_bloc.dart';

@freezed
class InputPinEvent with _$InputPinEvent {
  const InputPinEvent._();

  factory InputPinEvent.changed(String value) = _InputPinEventChanged;
  factory InputPinEvent.unfocused() = _InputPinEventUnfocused;
}
