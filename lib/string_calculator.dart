class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

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

    return values.fold(0, (sum, n) => sum + n);
  }
}
