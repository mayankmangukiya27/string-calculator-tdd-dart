import 'package:test/test.dart';
import 'package:string_calculator/string_calculator.dart';

void main() {
  group('StringCalculator', () {
    test('empty string returns 0', () {
      final calculator = StringCalculator();
      expect(calculator.add(''), 0);
    });

    test('single number returns its value', () {
      final calculator = StringCalculator();
      expect(calculator.add('5'), 5);
    });
  });
}
