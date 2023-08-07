part of 'screen_first_cubit.dart';

@freezed
class ScreenFirstState with _$ScreenFirstState {
  const factory ScreenFirstState({
    @Default('') login,
    @Default('') pin,
    @Default(false) bool isLoginValid,
    @Default(false) bool isPinValid,
    String? loginErrorMessage,
    String? pinTokenErrorMessage,
    String? pinAccountErrorMessage,
    @Default(false) bool isFormValid,
  }) = _ScreenFirstState;
}
