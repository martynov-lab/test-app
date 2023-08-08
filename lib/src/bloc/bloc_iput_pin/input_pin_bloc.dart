import 'package:flutter_app_test/src/mixin/validation_pin_mixin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'input_pin_state.dart';
part 'input_pin_event.dart';

class InputPinBloc extends Bloc<InputEvent, InputPinState>
    with ValidationPinMixin, FirstInputPinBloc, SecondInputPinBloc {
  InputPinBloc() : super(InputPinState()) {
    on<InputPinChanged>(pinChanged);
    on<InputPinUnfocused>(pinUnfocused);
  }

  void pinChanged(InputPinChanged event, Emitter<InputPinState> emit) async {
    emit(state.copyWith(
      pin: event.value,
      errorMessage: validatePin(event.value),
    ));

    print('errorMessage Val: ${validatePin(event.value)}');
    print('errorMessage Pin: ${state.errorMessage}');
  }

  void pinUnfocused(
      InputPinUnfocused event, Emitter<InputPinState> emit) async {
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
