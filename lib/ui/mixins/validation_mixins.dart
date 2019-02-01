class ValidationMixins {
  String validateEmail(value) {
    if (!value.contains('@')) {
      return 'Please enter a valid email';
    }
  }

  String validatePassword(String value) {
    if (value.length < 4) {
      return 'Password must be at least 4 characters';
    }
  }
}
