void main(List<String> args) {
  MyStack myStack = MyStack();

  myStack.push(5);
  myStack.push("enes");
  myStack.push(true);

  print(myStack.pop());
  print(myStack.pop());
  print(myStack.pop());

  IntMyStack intMyStack = IntMyStack();

  intMyStack.push(2);
  intMyStack.push(3);
  intMyStack.push(4);

  print(intMyStack.pop());
  print(intMyStack.pop());
  print(intMyStack.pop());

  StringMyStack stringMyStack = StringMyStack();

  stringMyStack.push("Gamze");
  stringMyStack.push("Enes");
  stringMyStack.push("Baysal");

  print(stringMyStack.pop());
  print(stringMyStack.pop());
  print(stringMyStack.pop());

  GenericStack<String> genericStack = GenericStack();

  genericStack.push("Enes");
}

class MyStack {
  List _listem = [];

  push(yeniEleman) {
    _listem.add(yeniEleman);
  }

  pop() {
    return _listem.removeLast();
  }
}

class IntMyStack {
  List<int> _listem = [];

  push(int yeniEleman) {
    _listem.add(yeniEleman);
  }

  int pop() {
    return _listem.removeLast();
  }
}

class StringMyStack {
  List<String> _listem = [];

  push(String yeniEleman) {
    _listem.add(yeniEleman);
  }

  String pop() {
    return _listem.removeLast();
  }
}

class GenericStack<T> {
  List<T> _listem = <T>[];

  void push(T yeniEleman) {
    _listem.add(yeniEleman);
  }

  T pop() {
    return _listem.removeLast();
  }
}
