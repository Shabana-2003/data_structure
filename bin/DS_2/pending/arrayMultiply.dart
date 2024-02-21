int multiplyArrays(List<List<int>> arrays, int currentIndex) {
  return currentIndex == arrays.length
      ? 1
      : arrays[currentIndex].reduce((a, b) => a * b) * multiplyArrays(arrays, currentIndex + 1);
}

void main() {
  List<List<int>> arrays = [
    [1, 2, 2],
    [1, 5],
    [1, 1, 1],
  ];
  int result = multiplyArrays(arrays, 0);
  print(result);
}
