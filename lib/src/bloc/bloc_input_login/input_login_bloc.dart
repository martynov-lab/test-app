import 'package:flutter_app_test/src/mixin/validation_login_mixin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// import 'package:freezed_annotation/freezed_annotation.dart';

part 'input_login_state.dart';
part 'input_login_event.dart';
// part 'input_login_bloc.freezed.dart';

class InputLoginBloc extends Bloc<InputEvent, InputLoginState>
    with ValidatorLoginMixin {
  InputLoginBloc() : super(const InputLoginState()) {
    on<InputLoginChanged>(loginChanged);
    on<InputLoginUnfocused>(loginUnfocused);
  }

  void loginChanged(InputLoginChanged event, Emitter emit) async {
    emit(state.copyWith(
      login: event.value,
      errorMessage: validateLogin(event.value),
    ));
  }

  void loginUnfocused(InputLoginUnfocused event, Emitter emit) async {
    emit(
      state.copyWith(
        login: state.login,
        errorMessage: validateLogin2(state.login),
        isLoginValid: validateLogin2(state.login) == null,
      ),
    );
  }
}
