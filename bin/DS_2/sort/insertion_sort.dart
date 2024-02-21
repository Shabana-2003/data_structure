void insertionSort(List<int> list) {
  int n = list.length;
  for (int i = 1; i < n; i++) {
    int val = list[i];
    int j = i - 1;
    while (j >= 0 && list[j] > val) {
      list[j+1] = list[j];
      j--;
    }
    list[j + 1] = val;// list[j+1] is 0, list[j] is -1
  }
}
//34 : list[1]
//64 : list[0]
void main() {
  List<int> numbers = [64, 34, 25, 12, 22, 11, 90];
  print("Original list: $numbers");
  insertionSort(numbers);
  print("Sorted list: $numbers");
}