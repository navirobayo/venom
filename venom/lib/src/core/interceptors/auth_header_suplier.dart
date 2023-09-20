class AuthHeaderSupplier {
  String _token = '';

  String get token {
    if (_token.isNotEmpty) {
      return _token;
    }
    return '';
  }

  set token(String value) {
    _token = value;
  }
}
