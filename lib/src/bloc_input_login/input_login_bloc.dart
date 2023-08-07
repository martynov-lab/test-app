import 'package:flutter_app_test/src/validation_input_mixin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'input_login_event.dart';
part 'input_login_state.dart';
part 'input_login_bloc.freezed.dart';

class InputLoginBloc extends Bloc<InputLoginEvent, InputLoginState>
    with ValidatorMixin {
  InputLoginBloc() : super(const InputLoginState()) {
    on<_InputLoginEventChanged>(loginChanged);
    on<_InputLoginEventUnfocused>(loginUnfocused);
  }

  void loginChanged(InputLoginEvent event, Emitter emit) async {
    String value = (event as _InputLoginEventChanged).value;
    emit(state.copyWith(
      login: value,
      errorMessage: validateLogin(value),
    ));
  }

  void loginUnfocused(InputLoginEvent event, Emitter emit) async {
    emit(
      state.copyWith(
        login: state.login,
        errorMessage: validateLogin2(state.login),
        isLoginValid: validateLogin2(state.login) == null,
      ),
    );
  }
}
