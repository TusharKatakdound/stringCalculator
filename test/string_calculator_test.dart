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

  });
}