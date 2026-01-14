import 'package:test/test.dart';
import '../lib/string_calculator.dart';

void main() {
  group('String Calculator TDD', () {
    test('empty string returns 0', () {
      final calculator = StringCalculator();
      expect(calculator.add(''), 0);
    });

    test('single number returns itself', () {
      final calculator = StringCalculator();
      expect(calculator.add('1'), 1);
    });

    test('two numbers return their sum', () {
      final calculator = StringCalculator();
      expect(calculator.add('1,5'), 6);
    });
    // Test Failed output will: be: FormatException: Invalid radix-10 number (at character 1)1,5
    //Test Passed output will be: "two numbers return their sum"

    test('multiple numbers return sum', () {
      final calculator = StringCalculator();
      expect(calculator.add('1,2,3,4'), 10);
    });
    //Test Passed output will be: "multiple numbers return sum"

    test('new lines between numbers', () {
      final calculator = StringCalculator();
      expect(calculator.add('1\n2,3'), 6);
    });
    // Test Failed output will: be: FormatException: Invalid radix-10 number (at character 1)
    //Test Passed output will be: "new lines between numbers"

    test('custom delimiter support', () {
      final calculator = StringCalculator();
      expect(calculator.add('//;\n1;2'), 3);
    });
    // Test Failed output will: be: FormatException: Invalid radix-10 number (at character 1)
    //Test Passed output will be: "custom delimiter support"

    test('negative numbers throw exception', () {
      final calculator = StringCalculator();
      expect(
            () => calculator.add('1,-2,3'),
        throwsA(
          predicate(
                (e) => e is Exception &&
                e.toString().contains('negative numbers not allowed -2'),
          ),
        ),
      );
    });
    // Test Failed output will: be: Expected: throws an exception matching <Instance of 'Closure'>

    test('multiple negative numbers listed in exception', () {
      final calculator = StringCalculator();

      expect(
            () => calculator.add('1,-2,-3'),
        throwsA(
          predicate(
                (e) => e.toString().contains('-2,-3'),
          ),
        ),
      );
    });

  });
}