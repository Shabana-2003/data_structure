class Stack<T> {
 final  List<T> list = [];

  void push(T item) {
    list.add(item);
  }

  T pop() {
    if (list.isEmpty) {
      throw StateError('Cannot pop from an empty stack');
    }
    return list.removeLast();
  }

  void display() {
    print("Stack: $list");
  }
}

void main() {
  Stack<int> stack = Stack<int>();
  print("Stack before push: ${stack.list}");
  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(3);
  stack.push(3);
  stack.push(3);
  stack.push(3);
  stack.display();
}

