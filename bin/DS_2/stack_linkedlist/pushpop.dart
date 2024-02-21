class Node<T> {
  T data;
  Node<T>? next;
  Node(this.data);
}

class Stack<T> {
  Node<T>? _top;

  // Push an item onto the stack
  void push(T item) {
    Node<T> newNode = Node<T>(item);
    newNode.next = _top;
    _top = newNode;
  }

  // Pop an item from the stack
  pop() {
    if (_top == null) {
      print("Stack is empty. Cannot pop.");  
    }
    _top = _top!.next;
  }

  // Peek at the top item without removing it
  T? peek() {
    if (_top == null) {
      print("Stack is empty. Cannot peek.");
      return null;
    }
    return _top!.data;
  }

  // Check if the stack is empty
  bool isEmpty() {
    return _top == null;
  }

  // Print the elements of the stack
  void printStack() {
    var current = _top;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void main() {
  Stack<int> myStack = Stack<int>();
  myStack.push(1);
  myStack.push(2);
  myStack.push(3);
  myStack.printStack();
  print("Top Element: ${myStack.peek()}");
  myStack.pop();

  print("Updated Stack:");
  myStack.printStack();

  print("Is Stack Empty? ${myStack.isEmpty()}");
}
