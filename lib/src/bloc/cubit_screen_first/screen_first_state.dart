part of 'screen_first_cubit.dart';

@freezed
class ScreenFirstState with _$ScreenFirstState {
  const factory ScreenFirstState({
    String? login,
    String? pinToken,
    String? pinAccount,
    @Default(false) bool isLoginValid,
    @Default(false) bool isPinTokenValid,
    @Default(false) bool isPinAccountValid,
    String? loginErrorMessage,
    String? pinTokenErrorMessage,
    String? pinAccountErrorMessage,
    @Default(false) bool isFormValid,
  }) = _ScreenFirstState;
}
