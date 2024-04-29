// binary search using recursion

int binarySearch(List<int> arr, int target, int low, int high) {
  if (low <= high) {
    int mid = low + ((high - low) ~/ 2);
    if (arr[mid] == target) {
      return mid;
    }
    if (arr[mid] > target) {
      return binarySearch(arr, target, low, mid - 1);
    }
    return binarySearch(arr, target, mid + 1, high);
  }

  return -1;
}

void main() {
  List<int> arr = [2, 5, 8, 12, 16, 23, 38, 56, 72, 91];
  int target = 23;
  int result = binarySearch(arr, target, 0, arr.length - 1);
  if (result != -1) {
    print(target);
  } 
}
