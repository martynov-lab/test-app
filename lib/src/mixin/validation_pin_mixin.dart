mixin ValidationPinMixin {
  static final RegExp _pinRegExp = RegExp(
    r'''[^a-zA-Z0-9\!\@\#\$\%\^\&\*\(\)\-\_\+\=\;\:\,\.\<\>\`\~\{\}\^\"\'\[\]\|\/\\]+''',
  );
  static final RegExp _pinRequiredCharRegExp = RegExp(
    r'''((?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[\!\@\#\$\%\^\&\*\(\)\-\_\+\=\;\:\,\.\<\>\`\~\{\}\^\"\'\[\]\|\/\\])(?!.*[;]).+)''',
  );

  static final RegExp _pinIdentCharRegExp = RegExp(
    r'(.)\1{2,}',
  );

  bool matchesOldPins(List<String> oldPins, newPin) {
    return oldPins.contains(newPin);
  }

  String? validateTextFieldIsRequired(String? value) {
    if (value == null || value.trim().isEmpty) return 'This field is required';
    return null;
  }

  String? validatePin(String value) {
    if (value.length > 17) {
      return 'Превышена допустимая длина 17 символов';
    } else if (_pinRegExp.hasMatch(value)) {
      return 'Недопустимый символ';
    } else if (_pinIdentCharRegExp.hasMatch(value)) {
      return 'Более 2 одинаковых символов подряд';
    }
    //Два сообщения об ошибки
    else if (_pinIdentCharRegExp.hasMatch(value) &&
        _pinRegExp.hasMatch(value)) {
      return 'Более 2 одинаковых символов подряд. Недопустимый символ';
    } else if (_pinIdentCharRegExp.hasMatch(value) && value.length > 17) {
      return 'Более 2 одинаковых символов подряд. Превышена допустимая длина 17 символов';
    } else if (_pinRegExp.hasMatch(value) && value.length > 17) {
      return 'Недопустимый символ. Превышена допустимая длина 17 символов';
    } else {
      return null;
    }
  }

  String? validatePin2(
      String value, String login, List<String> oldPins, String defaultPin) {
    if (value.length < 8) {
      return 'Минимальная длина - 8 символов';
    } else if (value.length > 17) {
      return 'Превышена допустимая длина 17 символов';
    } else if (_pinRegExp.hasMatch(value)) {
      return 'Недопустимый символ';
    } else if (_pinIdentCharRegExp.hasMatch(value)) {
      return 'Более 2 одинаковых символов подряд';
    } else if (!_pinRequiredCharRegExp.hasMatch(value)) {
      return '''Допустимые символы: A-Z a-z 0-9 !@#\$%^&*()-_+=;:'",.<>/?\\|`~[]{}'''; //
    } else if (value == login) {
      return 'Совпадает с логином';
    } else if (matchesOldPins(oldPins, value)) {
      return 'Совпадает с одним из 3 предыдущих ПИН';
    } else if (value == defaultPin) {
      return 'Совпадает с ПИН по умолчанию';
    }
    //Два сообщения об ошибки
    else if (value.length < 8 && _pinRegExp.hasMatch(value)) {
      return 'Минимальная длина - 8 символов. Недопустимый символ';
    } else if (value.length < 8 && _pinIdentCharRegExp.hasMatch(value)) {
      return 'Минимальная длина - 8 символов. Более 2 одинаковых символов подряд';
    } else if (value.length < 8 && !_pinRequiredCharRegExp.hasMatch(value)) {
      return '''Минимальная длина - 8 символов. Допустимые символы: A-Z a-z 0-9 !@#\$%^&*()-_+=;:'",.<>/?\\|`~[]{}''';
    } else if (value.length < 8 && value == login) {
      return 'Минимальная длина - 8 символов. Совпадает с логином';
    } else if (value.length < 8 && matchesOldPins(oldPins, value)) {
      return 'Минимальная длина - 8 символов. Совпадает с одним из 3 предыдущих ПИН';
    } else if (value.length < 8 && value == defaultPin) {
      return 'Минимальная длина - 8 символов. Совпадает с ПИН по умолчанию';
    } else if (value.length > 17 && _pinRegExp.hasMatch(value)) {
      return 'Превышена допустимая длина 17 символов. Недопустимый символ';
    } else if (value.length > 17 && _pinIdentCharRegExp.hasMatch(value)) {
      return 'Превышена допустимая длина 17 символов. Более 2 одинаковых символов подряд';
    } else if (value.length > 17 && !_pinRequiredCharRegExp.hasMatch(value)) {
      return '''Превышена допустимая длина 17 символов. Допустимые символы: A-Z a-z 0-9 !@#\$%^&*()-_+=;:'",.<>/?\\|`~[]{}''';
    } else if (value.length > 17 && value == login) {
      return 'Превышена допустимая длина 17 символов. Совпадает с логином';
    } else if (value.length > 17 && matchesOldPins(oldPins, value)) {
      return 'Превышена допустимая длина 17 символов. Совпадает с одним из 3 предыдущих ПИН';
    } else if (value.length > 17 && value == defaultPin) {
      return 'Превышена допустимая длина 17 символов. Совпадает с ПИН по умолчанию';
    } else if (_pinRegExp.hasMatch(value) &&
        _pinIdentCharRegExp.hasMatch(value)) {
      return 'Недопустимый символ. Более 2 одинаковых символов подряд';
    } else if (_pinRegExp.hasMatch(value) &&
        !_pinRequiredCharRegExp.hasMatch(value)) {
      return '''Недопустимый символ. Допустимые символы: A-Z a-z 0-9 !@#\$%^&*()-_+=;:'",.<>/?\\|`~[]{}''';
    } else if (_pinRegExp.hasMatch(value) && value == login) {
      return 'Недопустимый символ. Совпадает с логином';
    } else if (_pinRegExp.hasMatch(value) && matchesOldPins(oldPins, value)) {
      return 'Недопустимый символ. Совпадает с одним из 3 предыдущих ПИН';
    } else if (_pinRegExp.hasMatch(value) && value == defaultPin) {
      return 'Недопустимый символ. Совпадает с ПИН по умолчанию';
    } else if (_pinIdentCharRegExp.hasMatch(value) &&
        !_pinRequiredCharRegExp.hasMatch(value)) {
      return '''Более 2 одинаковых символов подряд. Допустимые символы: A-Z a-z 0-9 !@#\$%^&*()-_+=;:'",.<>/?\\|`~[]{}''';
    } else {
      return null;
    }
  }
}
