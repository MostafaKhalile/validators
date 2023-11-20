import 'package:flutter_test/flutter_test.dart';
import 'package:validators/validators.dart';
import 'package:validators/src/rules/languages/is_arabic_chars.dart';
import 'package:validators/src/rules/languages/is_english_char.dart';
import 'package:validators/src/rules/urls/is_secure_url.dart';

void main() {
  test('all rules override toString', () {
    final rules = <TextValidationRule>[
      // colors
      const IsHexColor(),

      /// dates
      IsDateAfter(DateTime.now()),
      IsDateMillis(),
      const IsDate(),

      /// languages
      IsRTLLanguage(),
      IsLtrLanguage(),

      /// Lists
      ContainsAny([]),
      IsIn([]),
      IsNotIn([]),
      NotContainsAny([]),

      /// Numbers
      IsNumber(),
      IsArabicNum(),
      IsHindiNum(),
      IsNumber(),
      MaxValue(5),
      MinValue(5),

      /// phones
      IsEgyptianPhone(),
      ISKsaPhone(),

      /// Text
      IsArabicChars(),
      IsEnglishChars(),
      Contains(''),
      EndsWith(''),
      IsEmpty(),
      IsRequired(''),
      Match(''),
      MaxLength(0),
      MinLength(0),
      NotContains(''),
      StartsWith(''),

      /// url
      IsFacebookUrl(),
      IsInstagramUrl(),
      IsUrl(),
      IsYoutubeUrl(),
      const IsSecureUrl(),

      /// text
      /// magic
      /// this rule throws exeption when called and have another test some where else
      // IsOptional(),
    ];
    for (final rule in rules) {
      expect(
        rule.toString() == "Instance of '${rule.runtimeType}'",
        isFalse,
      );
    }
  });
}
