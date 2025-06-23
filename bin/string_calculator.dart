int add(String numbers) {
  if (numbers.isEmpty) return 0;

  List<String> parts = numbers.split(',');
  int sum = 0;

  for (var part in parts) {
    sum += int.parse(part);
  }

  return sum;
}
