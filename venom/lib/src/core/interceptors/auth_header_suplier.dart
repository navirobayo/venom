class AuthHeaderSupplier {
  String _token = '';

  String getToken() {
    if (_token.isNotEmpty) {
      return _token;
    }
    return '';
  }

  void setToken(String value) => _token = value;
}
