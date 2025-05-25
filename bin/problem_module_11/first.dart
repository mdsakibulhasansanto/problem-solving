// Problem link
//https://codemama.io/codetest/participate/4a75bc34-915a-4911-9e24-b1e78e8f0375/problems/minimum
// Write a program that finds the minimum of three numbers

import 'dart:io';

void main() {

  String? input = stdin.readLineSync();

  if (input != null) {

    List<int> numbers = input.split(' ').map(int.parse).toList();

    if (numbers.length == 3) {
      int smallest = numbers.reduce((a, b) => a < b ? a : b);
      print(smallest);
    } else {
      print("Please enter exactly 3 numbers");
    }
  }
}
