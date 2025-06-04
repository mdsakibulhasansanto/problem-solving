import 'dart:io';

void main() {
  // list size input
  int size = int.parse(stdin.readLineSync()!);

  if (size == 0) {
    print(0);
    return;
  }

  // List input
  List<String> input = stdin.readLineSync()!.split(' ');
  List<int> arr = [];

  for (int i = 0; i < size; i++) {
    arr.add(int.parse(input[i]));
  }

  List<int> sorted = List.from(arr);
  sorted.sort();

  double median;
  if (size % 2 == 1) {
    median = sorted[size ~/ 2].toDouble();
  } else {
    median = (sorted[size ~/ 2 - 1] + sorted[size ~/ 2]) / 2.0;
  }

  int sum = 0;
  for (int i = 0; i < size; i++) {
    if (arr[i] < median) {
      sum += arr[i];
    }
  }

  print("Output:");
  print(sum);
}
