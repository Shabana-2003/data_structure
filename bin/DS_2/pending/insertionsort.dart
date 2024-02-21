void insertionSort(List<String> list) {
  int n = list.length;
  for (int i = 1; i < n; i++) {
    String val = list[i];
    int j = i - 1;
    while (j >= 0 && list[j] .compareTo(val) >0) {
      list[j+1] = list[j];
      j--;
    }
    list[j + 1] = val;// list[j+1] is 0, list[j] is -1
  }
}
//34 : list[1]
//64 : list[0]
void main() {
  List<String> numbers = ['b','a','d'];
  print("Original list: $numbers");
  insertionSort(numbers);
  print("Sorted list: $numbers");
}