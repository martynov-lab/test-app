import 'dart:async';

import 'package:flutter_app_test/src/bloc/bloc_input_login/input_login_bloc.dart';
import 'package:flutter_app_test/src/bloc/bloc_iput_pin/input_pin_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'screen_first_state.dart';
part 'screen_first_cubit.freezed.dart';

class ScreenFirstCubit extends Cubit<ScreenFirstState> {
  final InputLoginBloc loginBloc;
  late final StreamSubscription loginSub;
  final SecondInputPinBloc pinTokenBloc;
  late final StreamSubscription pinTokenSub;
  final FirstInputPinBloc pinAccountBloc;
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
          pinToken: state.pinToken,
          pinAccount: state.pinAccount,
          isLoginValid: event.isLoginValid,
          isPinTokenValid: state.isPinTokenValid,
          isPinAccountValid: state.isPinAccountValid,
          isFormValid: event.isLoginValid &&
              state.isPinTokenValid &&
              state.isPinAccountValid,
          loginErrorMessage: event.errorMessage,
          pinTokenErrorMessage: state.pinTokenErrorMessage,
          pinAccountErrorMessage: state.pinAccountErrorMessage,
        ),
      );
    });
    pinTokenSub = pinTokenBloc.stream.listen((event) {
      print('Event: $event');
      emit(
        state.copyWith(
          login: state.login,
          pinToken: event.pin,
          pinAccount: state.pinAccount,
          isLoginValid: state.isLoginValid,
          isPinTokenValid: state.isPinTokenValid,
          isPinAccountValid: state.isPinAccountValid,
          isFormValid:
              state.isLoginValid && event.isPinValid && state.isPinAccountValid,
          loginErrorMessage: state.loginErrorMessage,
          pinTokenErrorMessage: event.errorMessage,
          pinAccountErrorMessage: state.pinAccountErrorMessage,
        ),
      );
      // print('pinChanged: ${state.pinToken}');
      // print('errorMessage Screen: ${state.pinTokenErrorMessage}');
    });
    pinAccountSub = pinAccountBloc.stream.listen((event) {
      emit(
        state.copyWith(
          login: state.login,
          pinToken: state.pinToken,
          pinAccount: event.pin,
          isLoginValid: state.isLoginValid,
          isPinTokenValid: state.isPinTokenValid,
          isPinAccountValid: state.isPinAccountValid,
          isFormValid:
              state.isLoginValid && state.isPinTokenValid && event.isPinValid,
          loginErrorMessage: state.loginErrorMessage,
          pinTokenErrorMessage: state.pinTokenErrorMessage,
          pinAccountErrorMessage: event.errorMessage,
        ),
      );
    });
  }
  void submite() {
    loginBloc.add(InputLoginFinished());
    pinTokenBloc.add(InputPinFinished());
    pinAccountBloc.add(InputPinFinished());
  }
}
