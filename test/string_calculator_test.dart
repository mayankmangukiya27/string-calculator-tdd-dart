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

    test('new lines between numbers are supported', () {
      final calculator = StringCalculator();
      expect(calculator.add('1\n2,3'), 6);
    });

    test('custom delimiter is supported', () {
      final calculator = StringCalculator();
      expect(calculator.add('//;\n1;2'), 3);
    });

    test('negative numbers throw exception', () {
      final calculator = StringCalculator();
      expect(
        () => calculator.add('1,-2'),
        throwsA(
          predicate(
            (e) => e.toString().contains('negative numbers not allowed -2'),
          ),
        ),
      );
    });
  });
}
