part of 'input_login_bloc.dart';

// @freezed
// class InputLoginEvent with _$InputLoginEvent {
//   const InputLoginEvent._();

//   factory InputLoginEvent.changed(String value) = _InputLoginEventChanged;
//   factory InputLoginEvent.unfocused() = _InputLoginEventUnfocused;
// }

abstract class InputEvent {
  const InputEvent();
}

class InputLoginChanged extends InputEvent {
  const InputLoginChanged(this.value);
  final String value;
}

class InputLoginFinished extends InputEvent {}
