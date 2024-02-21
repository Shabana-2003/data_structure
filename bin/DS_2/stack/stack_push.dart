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

  T peek() {
    if (list.isEmpty) {
      throw StateError('Cannot peek an empty stack');
    }
    return list.last;
  }
  
  void display() {
    print("Stack: $list");
  }

 void clear(){
 return list.clear();
 }

int search(T item) {
  for (int i = 0; i < list.length; i++) {
    if (list[i] == item) {
      return i; // Return the 0-based index of the item in the stack
    }
  }
  return -1; // Return -1 if the item is not found
}

mid(){
    int mid=(0+list.length)~/2;
    print('mid:${list[mid]}');
  }

  midinsert(T item){
    int mid=(0+list.length)~/2;
    list.insert(mid, item);
  }
  middelete(){
    int mid=(0+list.length)~/2;
    list.remove(list[mid]);
  }
  insertt(var pos,T value){
    list.insert(pos, value);
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
  stack.mid();
   int topItem = stack.peek();
  print("Top item: $topItem");
  int itemLocation =stack.search(3);
  print(itemLocation);
  int a=stack.pop();
  print(a); 
  stack.insertt(2,8);
  stack.display();
}

