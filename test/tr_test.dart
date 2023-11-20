import 'package:flutter_test/flutter_test.dart';
import 'package:validators/validators.dart';
import 'package:validators/tr.dart';

void main() {
  test(
    'if there is no onSpectefic ti returns the toString result',
    () {
      final func = validators([IsRequired()]);
      final msg = func('');
      expect(msg, 'required');
    },
  );
  test(
    'it can override the message',
    () {
      final func = validators([IsRequired()]);
      final msg = func('');
      expect(msg, 'required');
      ValidatorsLocalization.on<IsRequired>((rule) => 'new_msg');
      expect(func(''), 'new_msg');
    },
  );
}
