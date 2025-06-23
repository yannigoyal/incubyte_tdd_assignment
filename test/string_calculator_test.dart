import 'package:test/test.dart';

import '../bin/string_calculator.dart';

void main() {
  group('StringCalculator.add', () {
    test('0', () {
      expect(add(''), equals(0));
    });
    test('1', () {
      expect(add("1"), equals(1));
    });
    test('2', () {
      expect(add("1,5"), equals(6));
    });
  });
}
