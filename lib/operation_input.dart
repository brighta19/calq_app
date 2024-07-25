enum Operation {
  addition,
  subtraction,
  multiplication,
  division,
}

class OperationInput {
  OperationInput([this.operation]);

  Operation? operation;

  @override
  String toString() {
    return switch (operation) {
      Operation.addition => '+',
      Operation.subtraction => '−',
      Operation.multiplication => '×',
      Operation.division => '÷',
      _ => throw Exception("Operation not set")
    };
  }
}
