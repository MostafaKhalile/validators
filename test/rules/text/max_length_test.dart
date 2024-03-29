import 'package:flutter_test/flutter_test.dart';
import 'package:validators/validators.dart';

void main() {
  group(
    'MaxLength rule',
    () {
      test('trims the string before checking', () {
        expect(MaxLength(5).isValid('    queen    '), isTrue);
      });

      test('returns true when length equals the max length', () {
        expect(MaxLength(5).isValid('queen'), isTrue);
      });
      test('returns true when length < max length', () {
        expect(MaxLength(10).isValid('queen'), isTrue);
      });
      test('returns false when length >  max length', () {
        expect(MaxLength(1).isValid('queen'), isFalse);
      });
    },
  );
}
