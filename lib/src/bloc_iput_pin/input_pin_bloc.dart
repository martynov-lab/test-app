import 'package:flutter_app_test/src/mixin/validation_pin_mixin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'input_pin_state.dart';
part 'input_pin_event.dart';

class InputPinBloc extends Bloc<InputEvent, InputPinState>
    with ValidationPinMixin, FirstInputPinBloc, SecondInputPinBloc {
  InputPinBloc() : super(const InputPinState()) {
    on<InputPinChanged>(pinChanged);
    on<InputPinUnfocused>(pinUnfocused);
  }

  void pinChanged(InputPinChanged event, Emitter emit) async {
    String? value = event.value;
    emit(state.copyWith(
      pin: value,
      errorMessage: validatePin(value),
    ));
  }

  void pinUnfocused(InputPinUnfocused event, Emitter emit) async {
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

mixin FirstInputPinBloc on Bloc<InputEvent, InputPinState> {}

mixin SecondInputPinBloc on Bloc<InputEvent, InputPinState> {}
