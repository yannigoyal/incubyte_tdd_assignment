import 'package:test/test.dart';

import '../bin/string_calculator.dart';

void main() {
  group('StringCalculator.add', () {
    test('returns 0 on empty string', () {
      expect(add(''), equals(0));
    });

    // Add more tests step-by-step...
  });
}
