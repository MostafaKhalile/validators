import 'package:validators/validators.dart';

class IsMixOfLettersAndNumbers extends TextValidationRule {
  IsMixOfLettersAndNumbers([String? error]) : super(error);

  @override
  bool isValid(String input) => containsLettersAndNumbers(input);
  @override
  String toString() => 'Must contain numbers and letters';
}

bool containsLettersAndNumbers(String value) {
  return RegExp(r'^(?=.*[a-zA-Z])(?=.*\d).+$').hasMatch(value);
}
