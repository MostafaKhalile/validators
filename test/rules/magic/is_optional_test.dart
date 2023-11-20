import 'package:flutter_test/flutter_test.dart';
import 'package:validators/validators.dart';

void main() {
  test(
    'IsOptional does not have a message',
    () {
      expect(() => IsOptional().toString(), throwsA(isA<Exception>()));
    },
  );
}
