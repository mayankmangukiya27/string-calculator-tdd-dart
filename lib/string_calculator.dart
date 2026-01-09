class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

    final parts = numbers.split(',');
    final values = parts.map(int.parse).toList();

    return values.reduce((a, b) => a + b);
  }
}
