enum Operation {
  addition,
  subtraction,
  multiplication,
  division,
}

class OperationInput {
  OperationInput({required this.operation});

  Operation operation;

  @override
  String toString() {
    switch (operation) {
      case Operation.addition:
        return '+';
      case Operation.subtraction:
        return '-';
      case Operation.multiplication:
        return '*';
      case Operation.division:
        return '/';
    }
  }
}
