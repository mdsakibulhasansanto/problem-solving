
import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);

  List<List<int>> matrix = [];

  for (int i = 0; i < n; i++) {
    List<int> row = stdin.readLineSync()!
        .trim()
        .split(' ')
        .map(int.parse)
        .toList();
    matrix.add(row);
  }

  List<List<int>> rotated = List.generate(n, (_) => List.filled(n, 0));

  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      rotated[j][n - i - 1] = matrix[i][j];
    }
  }


  for (int i = 0; i < n; i++) {
    print(rotated[i].join(' '));
  }
}
