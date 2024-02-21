//quick sort works like notes

void main() {
  List<int> numbers = [5, 1, 7, 4, 3];
  print("Original list: $numbers");
  quickSort(numbers, 0, numbers.length - 1);
  print("Sorted list: $numbers");
}

void quickSort(List<int> list, int low, int high) {
  if (low < high) {
    int pivotIndex = partition(list, low, high);
    quickSort(list, low, pivotIndex - 1);
    quickSort(list, pivotIndex + 1, high);
  }
}

int partition(List<int> list, int low, int high) {
  int pivot = list[low];
  int left = low + 1;
  int right = high;

  while (left <= right) {
    while (left <= right && list[left] <= pivot) {
      left++;
    }

    while (left <= right && list[right] > pivot) {
      right--;
    }

    if (left < right) {
      int temp = list[left];
      list[left] = list[right];
      list[right] = temp;
    }
  }

  int temp = list[low];
  list[low] = list[right];
  list[right] = temp;
  
  return right;
}

