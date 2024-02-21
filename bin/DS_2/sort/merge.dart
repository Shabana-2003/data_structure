void mergeSort(List<int> list, int left, int right) {      
  if (left < right) {
    int middle = (left + right)~/ 2;
    mergeSort(list, left, middle);
    mergeSort(list, middle + 1, right);
    merge(list, left, middle, right);
  }
}
void merge(List<int> list, int left, int middle, int right){
  int n1 = middle - left + 1;
  int n2 = right - middle;
  // Create temporary arrays
  List<int> leftArray = List<int>.filled(n1, 0);//filled(n1,'');(if String)
  List<int> rightArray = List<int>.filled(n2, 0);
  // Copy data to temporary arrays leftArray[] and rightArray[]
  for (int i = 0; i < n1; i++) {
    leftArray[i] = list[left + i];
  }
  for (int j = 0; j < n2; j++) {
    rightArray[j] = list[middle + 1 + j];
  }
  // Merge the temporary arrays back into list[left..right]
  int i = 0, j = 0, k = left;
  while (i < n1 && j < n2) {
    if (leftArray[i] <= rightArray[j]) {//leftarray[i] .compareTo(rightarray[j])<=0
      list[k] = leftArray[i];
      i++;
    } else {
      list[k] = rightArray[j];
      j++;
    }
    k++;
  }
  // Copy the remaining elements of leftArray[], if there are any
  while (i < n1) {
    list[k] = leftArray[i];
    i++;
    k++;
  }
  // Copy the remaining elements of rightArray[], if there are any
  while (j < n2) {
    list[k] = rightArray[j];
    j++;
    k++;
  }
}
void main() {
  List<int> numbers = [64, 34, 25, 12, 22, 31, 90];
  print("Original list: $numbers");
  mergeSort(numbers, 0, numbers.length - 1);
  print("Sorted list: $numbers");
}
