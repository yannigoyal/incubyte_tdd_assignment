int add(String numbers) {
  if (numbers.isEmpty) return 0;

  String delimiter = ',';

  if (numbers.startsWith('//')) {
    final delimiterEnd = numbers.indexOf('\n');
    delimiter = numbers.substring(2, delimiterEnd);
    numbers = numbers.substring(delimiterEnd + 1);
  }

  numbers = numbers.replaceAll('\n', delimiter);
  List<String> parts = numbers.split(delimiter);

  int sum = 0;

  for (var part in parts) {
    sum += int.parse(part);
  }

  return sum;
}
