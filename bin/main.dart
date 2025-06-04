import 'dart:io';

void main() {
  String s = stdin.readLineSync()!;
  int maxLength = 0;
  Map<String, int> seen = {};
  int start = 0;

  for (int end = 0; end < s.length; end++) {
    String ch = s[end];

    if (seen.containsKey(ch) && seen[ch]! >= start) {
      start = seen[ch]! + 1;
    }

    seen[ch] = end;
    int windowLength = end - start + 1;
    if (windowLength > maxLength) {
      maxLength = windowLength;
    }
  }

  print(maxLength);
}
