class Node<T>{
 T data;
 Node<T>? next;
 Node(this.data);
}
class LinkedListStack<T>{
  Node<T>? _top;

  void push(T item){  
  Node<T> newNode=Node<T>(item);
  newNode.next=_top;
  _top=newNode;
  }
}

void main(){
  LinkedListStack<int> stack=LinkedListStack<int>();
  
}