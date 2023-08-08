part of 'input_pin_bloc.dart';

abstract class InputEvent {
  const InputEvent();
}

class InputPinChanged extends InputEvent {
  const InputPinChanged(this.value);

  final String value;
}

class InputPinFinished extends InputEvent {}



// @freezed
// class InputPinEvent with _$InputPinEvent {
//   const InputPinEvent._();

//   factory InputPinEvent.changed(String value) = _InputPinEventChanged;
//   factory InputPinEvent.unfocused() = _InputPinEventUnfocused;
// }