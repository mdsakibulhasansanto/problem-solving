
// Problem link
// https://codemama.io/codetest/participate/4a75bc34-915a-4911-9e24-b1e78e8f0375/problems/what-will-be-the-gcd
// What will be the GCD Program


import 'dart:io';

void main() {

  String? input = stdin.readLineSync();

  if (input == null) return;
  int space = input.indexOf(' ');

  int a = int.parse(input.substring(0, space));
  int b = int.parse(input.substring(space + 1));

  int result = calculate(a, b);

  print('$result');
}

int calculate(int a, int b) {

  while (b != 0) {
    int temp = b;
    b = a % b;
    a = temp;
  }
  return a;

}
