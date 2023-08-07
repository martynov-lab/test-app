import 'dart:async';

import 'package:flutter_app_test/src/bloc_input_login/input_login_bloc.dart';
import 'package:flutter_app_test/src/bloc_iput_pin/input_pin_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'screen_first_state.dart';
part 'screen_first_cubit.freezed.dart';

class ScreenFirstCubit extends Cubit<ScreenFirstState> {
  final InputLoginBloc loginBloc;
  late final StreamSubscription loginSub;
  final SecondInputBloc pinTokenBloc;
  late final StreamSubscription pinTokenSub;
  final FirstInputBloc pinAccountBloc;
  late final StreamSubscription pinAccountSub;
  ScreenFirstCubit({
    required this.loginBloc,
    required this.pinTokenBloc,
    required this.pinAccountBloc,
  }) : super(const ScreenFirstState()) {
    loginSub = loginBloc.stream.listen((event) {
      emit(
        state.copyWith(
          login: event.login,
          pin: state.pin,
          isLoginValid: event.isLoginValid,
          isPinValid: state.isPinValid,
          isFormValid: event.isLoginValid && state.isPinValid,
          loginErrorMessage: event.errorMessage,
          pinTokenErrorMessage: state.pinTokenErrorMessage,
          pinAccountErrorMessage: state.pinAccountErrorMessage,
        ),
      );
    });
    pinTokenSub = pinTokenBloc.stream.listen((event) {
      emit(
        state.copyWith(
          login: state.login,
          pin: event.pin,
          isLoginValid: state.isLoginValid,
          isPinValid: event.isPinValid,
          isFormValid: event.isPinValid && state.isLoginValid,
          loginErrorMessage: state.loginErrorMessage,
          pinTokenErrorMessage: event.errorMessage,
          pinAccountErrorMessage: state.pinAccountErrorMessage,
        ),
      );
    });
    pinAccountSub = pinAccountBloc.stream.listen((event) {
      emit(
        state.copyWith(
          login: state.login,
          pin: event.pin,
          isLoginValid: state.isLoginValid,
          isPinValid: event.isPinValid,
          isFormValid: event.isPinValid && state.isLoginValid,
          loginErrorMessage: state.loginErrorMessage,
          pinTokenErrorMessage: state.pinTokenErrorMessage,
          pinAccountErrorMessage: event.errorMessage,
        ),
      );
    });
  }
  void submite() {
    loginBloc.add(InputLoginEvent.unfocused());
    pinAccountBloc.add(InputPinEvent.unfocused());
    pinAccountBloc.add(InputPinEvent.unfocused());
  }
}
