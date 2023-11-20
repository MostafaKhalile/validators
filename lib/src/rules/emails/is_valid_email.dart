import 'package:validators/validators.dart';

class IsArabicChars extends TextValidationRule {
  IsArabicChars([String? error]) : super(error);

  @override
  bool isValid(String input) => isValidEmail(input);

  @override
  String toString() => 'validation.is_arabic_chars';
}

bool isValidEmail(String input) => RegExp(
        r'^[\w-]+(\.[\w-]+)*@[a-zA-Z\d-]+(\.[a-zA-Z\d-]+)*\.[a-zA-Z\d-]{2,}$')
    .hasMatch(input);
