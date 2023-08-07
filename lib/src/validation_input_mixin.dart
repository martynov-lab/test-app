mixin ValidatorMixin {
  static final RegExp _loginRegExp = RegExp(
    r'\s+',
  );
  static final RegExp _pinRegExp = RegExp(
    r'''[^a-zA-Z0-9\!\@\#\$\%\^\&\*\(\)\-\_\+\=\;\:\,\.\<\>\`\~\{\}\^\"\'\[\]\|\/\\]+''',
  );

  static final RegExp _pinIdentCharRegExp = RegExp(
    r'(.)\1{2,}',
  );
  static final RegExp _ipAddressAndPortRegExp = RegExp(
    r'^(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)(\:([0-9]{1,4}|[1-5][0-9]{4}|6[0-4][0-9]{3}|65[0-4][0-9]{2}|655[0-2][0-9]|6553[0-5]))?$',
  );
  static final RegExp _ipAddressRegExp = RegExp(
    r'^(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)?$',
  );
  static final RegExp _urlAddressRegExp = RegExp(
    r'^(?:(?:https?|ftp):\/\/)?(?:www\.)?([a-zA-Z0-9.-]+\.[a-zA-Z]{2,})(?:\/.*)?$',
  );

  String? validateTextFieldIsRequired(String? value) {
    if (value == null || value.trim().isEmpty) return 'This field is required';
    return null;
  }

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

  String? validatePin(String value) {
    if (value.length > 17) {
      return 'превышена допустимая длина 17 символов';
    } else if (_pinRegExp.hasMatch(value)) {
      return 'недопустимый символ';
    } else if (_pinIdentCharRegExp.hasMatch(value)) {
      return 'Более 2 одинаковых символов подряд';
    } else {
      return null;
    }
  }

  String? validatePin2(
      String value, String login, String oldPin, String defaultPin) {
    if (value.length < 8) {
      return 'минимальная длина - 8 символов';
    } else if (value.length > 17) {
      return 'превышена допустимая длина 17 символов';
    } else if (_pinRegExp.hasMatch(value)) {
      return 'недопустимый символ';
    } else if (_pinIdentCharRegExp.hasMatch(value)) {
      return 'Более 2 одинаковых символов подряд';
    }
    // else if (_pinIdentCharRegExp.hasMatch(value)) {
    //   return '!!!!!!!!!!!!!!'; //!!!!!!!!!!!
    // }
    else if (value == login) {
      return 'Совпадает с логином';
    } else if (value == oldPin) {
      return 'Совпадает с одним из 3 предыдущих ПИН';
    } else if (value == defaultPin) {
      return 'Совпадает с ПИН по умолчанию';
    } else {
      return null;
    }
  }

  String? validateIpAddressAndPort(String? value) {
    if (value == null || value.trim().isEmpty) {
      return null;
    }
    if (_ipAddressAndPortRegExp.hasMatch(value)) return 'Недопустимый формат';
    return null;
  }

  String? validateIpAddress(String? value) {
    if (value == null || value.trim().isEmpty) {
      return null;
    }
    if (_ipAddressRegExp.hasMatch(value)) return 'Недопустимый формат';
    return null;
  }

  String? validateurlAddress(String? value) {
    if (value == null || value.trim().isEmpty) {
      return null;
    }
    if (_urlAddressRegExp.hasMatch(value)) return 'Недопустимый формат';
    return null;
  }
}
