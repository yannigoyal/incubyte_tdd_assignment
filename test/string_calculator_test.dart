import 'package:test/test.dart';

import '../bin/string_calculator.dart';

void main() {
  group('StringCalculator.add', () {
    test('Test Case 1: Empty string returns 0', () {
      expect(add(''), equals(0));
    });
     test('Test Case 2: Single number returns itself', () {
      expect(add("1"), equals(1));
    });
     test('Test Case 2: Single number returns itself', () {
      expect(add("1,5"), equals(6));
    });
    test('Test Case 4: Multiple comma-separated numbers return sum', () {
      expect(add("1,2,3,4"), equals(10));
    });
    test('Test Case 5: Handles newlines as delimiter', () {
      expect(add("1\n2,3"), equals(6));
    });
    test('Test Case 6: Handles custom delimiter //;\\n1;2', () {
      expect(add('//;\n1;2'), equals(3));
    });
    test('Test Case 7: Single negative number throws exception', () {
      expect(() => add('1,-2'),
          throwsA(predicate((e) => e.toString().contains('negative numbers not allowed -2'))));
    });
    test('Test Case 8: Multiple negative numbers listed in exception', () {
      expect(() => add('1,-2,-4'),
          throwsA(predicate((e) => e.toString().contains('negative numbers not allowed -2,-4'))));
    });
  });
}
