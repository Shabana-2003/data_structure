class Queue {
 final List<int> _elements = [];

  // Check if the queue is empty
  bool isEmpty() {
    return _elements.isEmpty;
  }

  // Add an element to the end of the queue
  void enqueue(dynamic element) {
    _elements.add(element);
  }

  // Remove and return the element at the front of the queue
  dynamic dequeue() {
    if (isEmpty()) {
      throw Exception("Queue is empty");
    }
    return _elements.removeAt(0);
  }

  // Return the element at the front of the queue without removing it
  dynamic peek() {
    if (isEmpty()) {
      throw Exception("Queue is empty");
    }
    return _elements.first;
  }

  // Return the size of the queue
  int size() {
    return _elements.length;
  }
}

void main() {
  Queue myQueue = Queue();

  // Enqueue elements
  myQueue.enqueue(10);
  myQueue.enqueue(20);
  myQueue.enqueue(30);

  // Print the front element
  print("Front element: ${myQueue.peek()}");

  // Dequeue an element
  print("Dequeued element: ${myQueue.dequeue()}");

  // Print the front element after dequeue
  print("Front element after dequeue: ${myQueue.peek()}");

  // Print the size of the queue
  print("Size of the queue: ${myQueue.size()}");
}
