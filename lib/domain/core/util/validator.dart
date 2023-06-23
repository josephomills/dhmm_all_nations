import 'package:injectable/injectable.dart';

@injectable
class Validator {
  Validator();

  final RegExp _emailRegExp = RegExp(
    r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$',
  );
  final RegExp _passwordRegExp = RegExp(
    r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$',
  );

  bool isValidEmail(String email) {
    return _emailRegExp.hasMatch(email);
  }

  bool isValidPassword(String password) {
    return _passwordRegExp.hasMatch(password);
  }

  //Ignore
  String? isTestPasswordValid(String password) {
    return validatePassword(password);
  }

  bool validConfirmPassword(String password, String confirmPassword) {
    return password.compareTo(confirmPassword) == 0;
  }

  bool isValidName(String name) {
    return name.isNotEmpty;
  }

  String? validateUsername(String? username) {
    final usernameLength = username!.length == 6;

    String? str;
    if (!usernameLength) {
      str = "Username must be a 6 digit index number";
    }

    return str;
  }

  String? validatePassword(String? password) {
    final passwordLength = password!.length > 6;
    final hasUpperCase = password.contains(RegExp('[A-Z]'));
    final hasSpecialCharacter =
        password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
    final hasDigits = password.contains(RegExp('[0-9]'));

    String? str;
    if (!hasDigits) {
      str = 'Password must include digits';
      // } else if (!hasUpperCase) {
      //   str = 'Must have an upper case';
      // } else if (!hasSpecialCharacter) {
      //   str = 'Must have special character';
    } else if (!passwordLength) {
      str = 'Password must have more than 6 characters';
    }

    return str;
  }

  String? validateName(String? name) {
    String? str;
    if (!isValidName(name!)) {
      str = "Please enter a valid name";
    }

    return str;
  }

  String? validateEmail(String? name) {
    String? str;
    if (!isValidEmail(name!)) {
      str = "Please enter a valid email";
    }

    return str;
  }
}
