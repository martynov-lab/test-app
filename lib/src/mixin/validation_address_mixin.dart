mixin ValidationAddressMixon {
  static final RegExp _ipAddressAndPortRegExp = RegExp(
    r'^(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)(\:([0-9]{1,4}|[1-5][0-9]{4}|6[0-4][0-9]{3}|65[0-4][0-9]{2}|655[0-2][0-9]|6553[0-5]))?$',
  );
  static final RegExp _ipAddressRegExp = RegExp(
    r'^(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)?$',
  );
  static final RegExp _urlAddressRegExp = RegExp(
    r'^(?:(?:https?|ftp):\/\/)?(?:www\.)?([a-zA-Z0-9.-]+\.[a-zA-Z]{2,})(?:\/.*)?$',
  );

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
