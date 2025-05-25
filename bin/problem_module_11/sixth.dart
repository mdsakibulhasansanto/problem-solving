// Problem link
// https://codemama.io/codetest/participate/4a75bc34-915a-4911-9e24-b1e78e8f0375/problems/fibonacci

// Fibonacci program

import 'dart:io';

void main() {
  int mod = 1000000007;
  int n = int.parse(stdin.readLineSync()!);

  if (n == 0) {
    print(0);
    return;
  }

  int a = 0, b = 1, fib = 0;

  for (int i = 2; i <= n; i++) {
    fib = (a + b) % mod;
    a = b;
    b = fib;
  }

  print(b);
}
