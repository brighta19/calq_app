import 'button_pad_input.dart';
import 'operation_input.dart';
import 'number_input.dart';

class Calculation {
  NumberInput _firstNumber = NumberInput();
  OperationInput _operationInput = OperationInput();
  NumberInput _secondNumber = NumberInput();

  bool get _isOperationSet {
    try {
      _operationInput.toString();
      return true;
    } catch (_) {
      return false;
    }
  }

  bool get showFullExpression => _isOperationSet;

  update(ButtonPadInput input) {
    switch (input) {
      case ButtonPadInput.allClear:
        _clearInput();
      case ButtonPadInput.backspace:
        _tryRemovingDigit();
      case ButtonPadInput.percent:
        _togglePercentage();
      case ButtonPadInput.negate:
        _negateNumber();
      case ButtonPadInput.decimalPoint:
        _tryAddingDecimalPoint();

      case ButtonPadInput.add:
        _setOperation(Operation.addition);
      case ButtonPadInput.subtract:
        _setOperation(Operation.subtraction);
      case ButtonPadInput.multiply:
        _setOperation(Operation.multiplication);
      case ButtonPadInput.divide:
        _setOperation(Operation.division);

      case ButtonPadInput.zero:
        _firstNumber.insertDigit(0);
      case ButtonPadInput.one:
        _firstNumber.insertDigit(1);
      case ButtonPadInput.two:
        _firstNumber.insertDigit(2);
      case ButtonPadInput.three:
        _firstNumber.insertDigit(3);
      case ButtonPadInput.four:
        _firstNumber.insertDigit(4);
      case ButtonPadInput.five:
        _firstNumber.insertDigit(5);
      case ButtonPadInput.six:
        _firstNumber.insertDigit(6);
      case ButtonPadInput.seven:
        _firstNumber.insertDigit(7);
      case ButtonPadInput.eight:
        _firstNumber.insertDigit(8);
      case ButtonPadInput.nine:
        _firstNumber.insertDigit(9);

      case ButtonPadInput.equate:
        throw Exception("Not yet implemented");
    }
  }

  _clearInput() {
    _firstNumber = NumberInput();
    _operationInput = OperationInput();
    _secondNumber = NumberInput();
  }

  _tryRemovingDigit() {
    try {
      _firstNumber.removeRightmostDigit();
    } catch (_) {}
  }

  _tryAddingDecimalPoint() {
    try {
      _firstNumber.addDecimalPoint();
    } catch (_) {}
  }

  _togglePercentage() {
    _firstNumber.togglePercentage();
  }

  _negateNumber() {
    _firstNumber.negate();
  }

  _setOperation(Operation operation) {
    _operationInput.operation = operation;
  }

  String get firstNumber => _firstNumber.toString();
  String get fullExpression =>
      _firstNumber.toString() +
      _operationInput.toString() +
      _secondNumber.toString();

  @override
  String toString() {
    if (showFullExpression) {
      return fullExpression;
    } else {
      return firstNumber;
    }
  }
}
