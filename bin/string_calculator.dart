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

  List<int> negatives = [];
  int sum = 0;

  for (var part in parts) {
    int num = int.parse(part);
    if (num < 0) {
      negatives.add(num);
    } else if (num <= 1000) {
      sum += num;
    }
  }

  if (negatives.isNotEmpty) {
    throw Exception("negative numbers not allowed ${negatives.join(',')}");
  }

  return sum;
}
