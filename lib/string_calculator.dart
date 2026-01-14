
class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;
    return numbers
        .split(RegExp('[,\n]'))
        .map(int.parse)
        .reduce((a, b) => a + b);
  }
}