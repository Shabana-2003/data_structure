 bubbleSort(List<String> list) {
  int n = list.length;

  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      if (list[j].compareTo(list[j + 1]) > 0) {
        String temp = list[j];
        list[j] = list[j + 1];
        list[j + 1] = temp;
      }
    }
  }
}

void main() {
  List<String> stringList = ["banana", "apple", "orange", "grape", "kiwi"];
  print("Unsorted List: $stringList");
  bubbleSort(stringList);
  print("Sorted List: $stringList");
}
