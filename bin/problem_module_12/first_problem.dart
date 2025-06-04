


// Search for Vowels problem

import 'dart:io';
void main() {
  String input = stdin.readLineSync() ?? '';

  List<String> vowels = ['a', 'e', 'i', 'o', 'u'];

  for (int i = 0; i < input.length; i++) {

    String letter = input[i].toLowerCase();
    if (vowels.contains(letter)) {
      print('The string contains a vowel.');
      return;
    }
  }

  print('The string does not contain any vowel.');
}
