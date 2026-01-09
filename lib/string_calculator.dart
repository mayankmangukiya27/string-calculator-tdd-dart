class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

    final normalized = numbers.replaceAll('\n', ',');
    final values = normalized.split(',').map(int.parse).toList();

    return values.reduce((a, b) => a + b);
  }
}
