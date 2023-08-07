import 'package:flutter_app_test/src/validation_input_mixin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'input_pin_state.dart';
part 'input_pin_event.dart';
part 'input_pin_bloc.freezed.dart';

class InputPinBloc extends Bloc<InputPinEvent, InputPinState>
    with ValidatorMixin, FirstInputBloc, SecondInputBloc {
  InputPinBloc() : super(const InputPinState()) {
    on<_InputPinEventChanged>(pinChanged);
    on<_InputPinEventUnfocused>(pinUnfocused);
  }

  void pinChanged(InputPinEvent event, Emitter emit) async {
    String value = (event as _InputPinEventChanged).value;
    emit(state.copyWith(
      pin: value,
      errorMessage: validatePin(value),
    ));
  }

  void pinUnfocused(InputPinEvent event, Emitter emit) async {
    emit(
      state.copyWith(
        errorMessage:
            validatePin2(state.pin, 'Qwertyu123', 'Qwertyu123*', '12345678'),
        isPinValid:
            validatePin2(state.pin, 'Qwertyu123', 'Qwertyu123*', '12345678') ==
                null,
      ),
    );
  }
}

mixin FirstInputBloc on Bloc<InputPinEvent, InputPinState> {}

mixin SecondInputBloc on Bloc<InputPinEvent, InputPinState> {}
