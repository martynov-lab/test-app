import 'dart:async';
import 'package:flutter_app_test/src/mixin/validation_pin_mixin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'input_pin_state.dart';
part 'input_pin_event.dart';

mixin FirstInputPinBloc on Bloc<InputEvent, InputPinState> {}

mixin SecondInputPinBloc on Bloc<InputEvent, InputPinState> {}

class InputPinBloc extends Bloc<InputEvent, InputPinState>
    with ValidationPinMixin, FirstInputPinBloc, SecondInputPinBloc {
  Timer? _timer;
  InputPinBloc() : super(const InputPinState()) {
    on<InputPinChanged>(_validateDuringInput);
    on<InputPinFinished>(_validateFinal);
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(milliseconds: 1000), (timer) {
      print('Timer tick: ${timer.tick}');
      if (timer.tick >= 5) {
        print('ValidateFinal !!!!!');
        add(InputPinFinished());
        timer.cancel();
      }
    });
  }

  void _reset() {
    _timer?.cancel();
    _timer = null;
    _startTimer();
  }

  void _validateDuringInput(
      InputPinChanged event, Emitter<InputPinState> emitter) async {
    emitter(state.copyWith(
      pin: event.value,
      errorMessage: validatePin(event.value),
    ));
    if (_timer != null) {
      _reset();
    } else {
      _startTimer();
    }

    print('errorMessage Val: ${validatePin(event.value)}');
    print('errorMessage Pin: ${state.errorMessage}');
  }

  void _validateFinal(
      InputPinFinished event, Emitter<InputPinState> emitter) async {
    emitter(
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



// class CustomTimer {
//   Timer? _timer;
//   Function(InputEvent event) addEvent;
//   CustomTimer({required this.addEvent});

//   void _startTimer() {
//     _timer = Timer.periodic(const Duration(milliseconds: 1000), (timer) {
//       print('Timer tick: ${timer.tick}');
//       if (timer.tick >= 5) {
//         print('ValidateFinal !!!!!');
//         // add(InputPinFinished());
//         addEvent;

//         timer.cancel();
//       }
//     });
//   }

//   void _reset() {
//     _timer?.cancel();
//     _timer = null;
//     _startTimer();
//   }
// }
