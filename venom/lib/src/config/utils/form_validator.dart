class FormValidators {
  static final FormValidators _singleton = FormValidators._();

  factory FormValidators() => _singleton;

  FormValidators._();

  String? emptyValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'اجباری';
    }
    return null;
  }

  String? _lengthValidator(String value, int minLength) {
    if (value.length < minLength) {
      return 'حداقل $minLength کاراکتر';
    }
    return null;
  }

  String? fullnameValidator(String? value) {
    String? res = emptyValidator(value);
    return res ??= _lengthValidator(value!, 3);
  }

  String? phoneNumberValidator(String? value) {
    const String pattern = r'^09[0|1|2|3|9][0-9]{8}$';
    final RegExp regExp = RegExp(pattern, caseSensitive: false);

    String? res = emptyValidator(value);
    return res ??= regExp.hasMatch(value!) ? null : 'شماره اشتباه است';
  }

  String? verifyCodeValidator(String? value) {
    String? res = emptyValidator(value);
    return res ??= _lengthValidator(value!, 6);
  }
}
