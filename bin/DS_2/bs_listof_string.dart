
int binarySearch(List<String> names, String target) {
  int left = 0;
  int right = names.length - 1;

  while (left <= right) {
    int mid = (left + right) ~/ 2;
    if (names[mid] == target) {
      return mid;
    }
    else if (names[mid].compareTo(target) < 0) {
      left = mid + 1;
    }
    else {
      right = mid - 1;
    }
  }
  return -1;
}

void main() {
  List<String> names = [
    "Alice",
    "Bob",
    "Charlie",
    "David",
    "Eve",
    "Frank",
    "Grace",
    "Hannah"
  ];
  names.sort();
  
  String target = "David";
  int index = binarySearch(names, target);
  if (index != -1) {
    print("$target found at index $index");
  } else {
    print("$target not found");
  }
}
