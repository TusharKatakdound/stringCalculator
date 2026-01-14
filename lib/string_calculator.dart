
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

    return numbersPart
        .split(delimiterPattern)
        .map(int.parse)
        .reduce((a, b) => a + b);
  }
}