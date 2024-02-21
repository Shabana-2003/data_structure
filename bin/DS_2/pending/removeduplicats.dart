void removeDuplicates(List<int> list) {
  print(list.toSet().toList()) ;
}

void main() {
  List<int> list = [1, 5, 9, 1, 5, 1];
  removeDuplicates(list);
}
