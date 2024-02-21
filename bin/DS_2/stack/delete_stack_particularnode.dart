class Stack {
  List<dynamic> _items = [];

  void push(dynamic item) {
    _items.add(item);
  }
/////////////////////////////////////////////////////delete value
  void deleteNode(dynamic nodeToDelete) {
    _items.remove(nodeToDelete);
  }
/////////////////////////////////////////////////////delete index
 void  delete(int index){
    _items.remove(_items[index]);
  }
//////////////////////////////////////////////////////
}

void main() {
  Stack myStack = Stack();

  myStack.push(1);
  myStack.push(2);
  myStack.push(3);
  myStack.push(4);
  myStack.push(15);
  myStack.deleteNode(15);
  myStack.delete(3);
  print(myStack._items);
}
