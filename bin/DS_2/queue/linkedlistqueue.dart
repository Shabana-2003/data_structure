class Node<T> {
  T data;
  Node<T>? next;

  Node(this.data);
}

class LinkedListQueue<T> {
  Node<T>? front;
  Node<T>? rear;

  bool isEmpty() {
    return front == null;
  }

  void enqueue(T data) {
    Node<T> newNode = Node<T>(data);

    if (isEmpty()) {
      front = rear = newNode;
    } else {
      rear!.next = newNode;
      rear = newNode;
    }
  }

  T dequeue() {
    if (isEmpty()) {
      throw StateError('Queue is empty');
    }

    T data = front!.data;
    front = front!.next;

    if (front == null) {
      rear = null; // If the queue becomes empty after dequeue
    }

    return data;
  }

  T peek(){
    if(isEmpty()){
      throw StateError("queue is empty");
    }
    return front!.data;
  }

  void printQueue() {
    Node<T>? current = front;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void main() {
  LinkedListQueue<int> queue = LinkedListQueue<int>();

  queue.enqueue(1);
  queue.enqueue(2);
  queue.enqueue(3);

  print("Queue after enqueue:");
  queue.printQueue();

  print("\nDequeued element: ${queue.dequeue()}");
  print("Queue after dequeue:");
  queue.printQueue();
  int peek= queue.peek();
  print("/////////");
  print(peek);
}
