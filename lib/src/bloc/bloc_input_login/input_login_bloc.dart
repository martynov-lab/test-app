import 'dart:async';
import 'package:flutter_app_test/src/mixin/validation_login_mixin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'input_login_state.dart';
part 'input_login_event.dart';

class InputLoginBloc extends Bloc<InputEvent, InputLoginState>
    with ValidatorLoginMixin {
  Timer? _timer;
  InputLoginBloc() : super(const InputLoginState()) {
    on<InputLoginChanged>(validateDuringInput);
    on<InputLoginFinished>(validateFinal);
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(milliseconds: 1000), (timer) {
      print('Timer tick: ${timer.tick}');
      if (timer.tick >= 5) {
        print('ValidateFinal !!!!!');
        add(InputLoginFinished());
        timer.cancel();
      }
    });
  }

  void _reset() {
    _timer?.cancel();
    _timer = null;
    _startTimer();
  }

  void validateDuringInput(
      InputLoginChanged event, Emitter<InputLoginState> emitter) async {
    emitter(state.copyWith(
      login: event.value,
      errorMessage: validateLogin(event.value),
    ));
    if (_timer != null) {
      _reset();
    } else {
      _startTimer();
    }
    print('event value: ${event.value}');
    print('state value: ${state.login}');
  }

  void validateFinal(
      InputLoginFinished event, Emitter<InputLoginState> emitter) async {
    emitter(
      state.copyWith(
        login: state.login,
        errorMessage: validateLogin2(state.login),
        isLoginValid: validateLogin2(state.login) == null,
      ),
    );
  }
}
