import 'package:validators/validators.dart';

class Validations {
  static String validateEmail(String str) {
    return isEmail(str) ? null : 'Please enter a valid email';
  }

  static String validatePassword(String password) {
    return password.length >= 6
        ? null
        : 'Passwords must be at least 6 chars long';
  }

  static String validateConfirmPassword(
      String confirmPassword, String password) {
    String err = validatePassword(confirmPassword);
    if (err != null) return err;

    if (confirmPassword != password) {
      return 'Passwords does not match';
    }

    return null;
  }

  static String validateName(String name) {
    return name.isNotEmpty ? null : 'You must enter your name';
  }
}
