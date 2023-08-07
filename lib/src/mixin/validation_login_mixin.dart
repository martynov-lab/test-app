mixin ValidatorLoginMixin {
  static final RegExp _loginRegExp = RegExp(
    r'\s+',
  );

  String? validateLogin(String value) {
    if (value.length > 48) {
      return 'превышена допустимая длина 48 символов';
    } else if (_loginRegExp.hasMatch(value)) {
      return 'недопустимый символ';
    } else {
      return null;
    }
  }

  String? validateLogin2(String value) {
    if (value.length <= 3 && value.isNotEmpty && value.trim().isEmpty) {
      return 'минимальная длина - 3 символа';
    } else if (value.length > 48) {
      return 'превышена допустимая длина 48 символов';
    } else if (_loginRegExp.hasMatch(value)) {
      return 'недопустимый символ';
    } else {
      return null;
    }
  }
}
