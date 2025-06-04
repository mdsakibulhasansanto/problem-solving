import 'dart:io';

void main() {
  String input = stdin.readLineSync()!;
  print(isValidCode(input));
}

bool isValidCode(String s) {
  if (s.length != 7) return false;

  if (s[0] != '#') return false;

  for (int i = 1; i < 7; i++) {
    String ch = s[i].toUpperCase();
    if (!((ch.codeUnitAt(0) >= '0'.codeUnitAt(0) && ch.codeUnitAt(0) <= '9'.codeUnitAt(0)) ||
        (ch.codeUnitAt(0) >= 'A'.codeUnitAt(0) && ch.codeUnitAt(0) <= 'F'.codeUnitAt(0)))) {
      return false;
    }
  }

  return true;
}
