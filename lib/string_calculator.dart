
class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

    var delimiterPattern = RegExp('[,\n]');
    var numbersPart = numbers;

    if (numbers.startsWith('//')) {
      final parts = numbers.split('\n');
      final delimiter = parts.first.substring(2);
      delimiterPattern = RegExp(RegExp.escape(delimiter));
      numbersPart = parts.last;
    }

    final parsedNumbers = numbersPart
        .split(delimiterPattern)
        .map(int.parse)
        .toList();

    final negatives = parsedNumbers.where((n) => n < 0).toList();
    if (negatives.isNotEmpty) {
      throw Exception(
        'negative numbers not allowed ${negatives.join(',')}',
      );
    }

    return parsedNumbers.fold(0, (sum, n) => sum + n);
  }
}