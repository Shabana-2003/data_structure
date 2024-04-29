// how to find loop in ll

class Node {
  int data;
  Node? next;

  Node(this.data);
}

bool hasCycle(Node? head) {
  if (head == null) return false;

  Node? slow = head;
  Node? fast = head;

  while (fast != null && fast.next != null) {
    slow = slow!.next;
    fast = fast.next!.next;

    if (slow == fast) {
      return true;
    }
  }

  return false;
}

void main() {
  Node head = Node(3);
  Node second = Node(2);
  Node third = Node(0);
  Node fourth = Node(-4);

  head.next = second;
  second.next = third;
  third.next = fourth;
  fourth.next = second; // Creating a loop

  bool hasLoop = hasCycle(head);
  print('Linked list has a loop: $hasLoop');
}
