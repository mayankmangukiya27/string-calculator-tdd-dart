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
    final negatives = values.where((n) => n < 0).toList();
    if (negatives.isNotEmpty) {
      throw ArgumentError(
        'negative numbers not allowed ${negatives.join(',')}',
      );
    }
    return values.reduce((a, b) => a + b);
  }
}
