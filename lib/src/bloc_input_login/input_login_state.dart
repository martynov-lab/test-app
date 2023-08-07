part of 'input_login_bloc.dart';

@freezed
class InputLoginState with _$InputLoginState {
  const factory InputLoginState({
    @Default('') login,
    @Default(false) bool isLoginValid,
    String? errorMessage,
  }) = _InputLoginState;
}
