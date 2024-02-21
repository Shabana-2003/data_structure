void selectionSort(List<int> list) {
  int n = list.length;

  for (int i = 0; i < n-1; i++) {
    int minIndex = i;

    for (int j = i + 1; j < n; j++) {
      if (list[j] < list[minIndex]) {
        minIndex = j;//11
      }
    }

    int temp = list[minIndex];
    list[minIndex] = list[i];
    list[i] = temp;// after 1st swap - 11,34,25,12,22,64,90
  }
}

void main() {
  List<int> numbers = [64, 34, 25, 12, 22, 11, 90];
  print("Original list: $numbers");
  selectionSort(numbers);
  print("Sorted list: $numbers");
}
