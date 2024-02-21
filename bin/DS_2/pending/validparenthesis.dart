//using stack
bool valid(String s) {
  List<String> stack = [];
  Map<String, String> map = {
    ')': '(',
    '}': '{',
    ']': '['
  };
  for (int i = 0; i < s.length; i++) {
    String current = s[i];
    if (map.containsKey(current)) {
      String topElement = stack.isEmpty ? '#' : stack.removeLast();
      if (topElement !=map[current]) {
        return false;
      }
    } else {
      stack.add(current);
    }
  }
  return stack.isEmpty;
}

void main() {
  String expression1 = "{[()]}";
  String expression2 = "{[(])}";
  String expression3 = "(){}[()]";
  
  print("$expression1  ${valid(expression1) ? 'valid' : 'invalid'}");
  print("$expression2  ${valid(expression2) ? 'valid' : 'invalid'}");
  print("$expression3  ${valid(expression3) ? 'valid' : 'invalid'}");
}
