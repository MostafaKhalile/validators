import 'package:validators/validators.dart';

class IsValidEmail extends TextValidationRule {
  IsValidEmail([String? error]) : super(error);

  @override
  bool isValid(String input) => isValidEmail(input);

  @override
  String toString() => 'please Enter a valid E-mail';
}

bool isValidEmail(String input) => RegExp(
        r'^[\w-]+(\.[\w-]+)*@[a-zA-Z\d-]+(\.[a-zA-Z\d-]+)*\.[a-zA-Z\d-]{2,}$')
    .hasMatch(input);
