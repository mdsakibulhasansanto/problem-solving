// Problem link
//https://codemama.io/codetest/participate/4a75bc34-915a-4911-9e24-b1e78e8f0375/problems/is-the-number-prime
// Is the number Prime program

import 'dart:io';

void main() {
  int number = int.parse(stdin.readLineSync()!);

  if (isPrime(number)) {
    print('$number is a prime number.');
  } else {
    print('$number is not a prime number.');
  }
}

bool isPrime(int number) {
  if (number < 2) return false;

  for (int i = 2; i <= number ~/ 2; i++) {
    if (number % i == 0) {
      return false;
    }
  }

  return true;
}

