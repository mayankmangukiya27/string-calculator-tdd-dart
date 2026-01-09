class StringCalculator {
  int add(String numbers) {
    String delimiter = ',';
    String numbersPart = numbers;

    if (numbers.startsWith('//')) {
      delimiter = numbers[2];
      numbersPart = numbers.substring(4);
    }

    final normalized = numbersPart.replaceAll('\n', delimiter);
    final values = normalized.split(delimiter).map(int.parse).toList();

    return values.reduce((a, b) => a + b);
  }
}
