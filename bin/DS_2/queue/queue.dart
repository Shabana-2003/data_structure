class Queue {
  final List<int> _elements = [];

  void enqueue(dynamic element) {
    _elements.add(element);
  }

  dynamic dequeue() {
    if (_elements.isEmpty) {
      throw Exception("Queue is empty");
    }
    return _elements.removeAt(0);
  }
}

void main() {
  Queue myQueue = Queue();

  // Enqueue elements
  myQueue.enqueue(10);
  myQueue.enqueue(20);
  myQueue.enqueue(30);

  // Dequeue an element
  print("Dequeued element: ${myQueue.dequeue()}");
}
