class ValidationMixin {
  String validateEmail(value) {
    RegExp exp = new RegExp('[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}');
    bool isValid = exp.hasMatch(value);
    if (!isValid) return 'Please return a valid email';

    return null;
  }

  String validatePassword(value) {
    if (value.length < 4) return 'passowrd length should be atleast 4';

    return null;
  }
}