
//Problem link
// https://codemama.io/codetest/participate/4a75bc34-915a-4911-9e24-b1e78e8f0375/problems/celsius_farenheit
// Celsius to Fahrenheit

import 'dart:io';

void main () {

  String? input = stdin.readLineSync();
  if (input == null) return ;
  double celsius = double.parse(input);
  double fahrenheit = (celsius * 9/5) + 32 ;

  print('The temperature in Fahrenheit is: ${fahrenheit.toStringAsFixed(2)}');

}


