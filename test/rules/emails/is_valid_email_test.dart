import 'package:flutter_test/flutter_test.dart';
import 'package:validators/src/rules/index.dart';

void main() {
  test(
    'should have a valid Email format',
    () async {
      expect(IsValidEmail().isValid('mostafa@wscdev.net'), true,
          reason: 'Emails should be formated like [admin@admin.com]');
    },
  );
}
