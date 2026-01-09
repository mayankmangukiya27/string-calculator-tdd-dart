import 'package:string_calculator/string_calculator.dart';

void main(List<String> arguments) {
  final calculator = StringCalculator();

  print(calculator.add('')); // 0
  print(calculator.add('1')); // 1
  print(calculator.add('1,2,3')); // 6
  print(calculator.add('1\n2,3')); // 6
  print(calculator.add('//;\n1;2')); // 3
}
