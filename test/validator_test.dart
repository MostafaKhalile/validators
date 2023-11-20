import 'package:flutter_test/flutter_test.dart';
import 'package:validators/validators.dart';

void main() {
  group('Validator function', () {
    test('stops on first failure', () {
      final msg = Validator([
        IsRequired(),
        MinLength(500),
      ])('');
      expect(msg, isA<String>());
    });

    test('support optional felids', () {
      final msg = Validator(
        [
          IsOptional(),
          IsRequired(),
        ],
      )('');
      expect(msg, equals(null));

      final msg2 = Validator(
        [
          IsOptional(),
          MaxLength(1),
        ],
      )('if enter value isOptional will not effect any thing');
      expect(msg2, isA<String>());
    });
    test('returns the first error message', () {
      final msg = Validator([
        IsRequired('this field is required'),
        MaxLength(1),
      ])('');
      expect(msg, equals('this field is required'));
    });

    test(
      'in case of failure run the onFailureCallback',
      () {
        bool getsCalled = false;

        Validator(
          [IsOptional(), MaxLength(1)],
          onFail: (input, rules, rule) {
            getsCalled = true;
            expect(input, equals('the-input'));
            expect(rules.first, isA<IsOptional>());
            expect(rules.last, isA<MaxLength>());
            expect(rule, isA<MaxLength>());
          },
        )('the-input');

        expect(getsCalled, isTrue);
      },
    );
  });
}
