bool isWhite(int index) {
  int x = index ~/ 8; // same as index / 8 without the remainder i.e row
  int y = index % 8; // same as index / 8 with the remainder i.e column

  bool isWhite = (x + y) % 2 ==
      0; //if the sum of x and y is even, then the square is white
  return isWhite;
}
