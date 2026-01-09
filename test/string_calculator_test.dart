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

    test('two comma separated numbers return sum', () {
      final calculator = StringCalculator();
      expect(calculator.add('1,5'), 6);
    });

    test('multiple numbers return correct sum', () {
      final calculator = StringCalculator();
      expect(calculator.add('1,2,3,4'), 10);
    });
  });
}
