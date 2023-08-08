part of 'input_login_bloc.dart';

// @freezed
// class InputLoginState with _$InputLoginState {
//   const factory InputLoginState({
//     @Default('') login,
//     @Default(false) bool isLoginValid,
//     String? errorMessage,
//   }) = _InputLoginState;
// }

class InputLoginState {
  final String login;
  final bool isLoginValid;
  final String? errorMessage;

  const InputLoginState({
    this.login = '',
    this.isLoginValid = false,
    this.errorMessage,
  });

  InputLoginState copyWith({
    String? login,
    bool? isLoginValid,
    String? errorMessage,
  }) {
    return InputLoginState(
      login: login ?? this.login,
      isLoginValid: isLoginValid ?? this.isLoginValid,
      errorMessage: errorMessage,
    );
  }
}
