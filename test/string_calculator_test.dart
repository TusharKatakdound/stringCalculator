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
  });
}