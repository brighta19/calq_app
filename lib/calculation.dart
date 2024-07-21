import 'button_pad_input.dart';
import 'operation_input.dart';
import 'number_input.dart';

class NumberMapping {
  static int toDigit(ButtonPadInput input) {
    return switch (input) {
      ButtonPadInput.zero => 0,
      ButtonPadInput.one => 1,
      ButtonPadInput.two => 2,
      ButtonPadInput.three => 3,
      ButtonPadInput.four => 4,
      ButtonPadInput.five => 5,
      ButtonPadInput.six => 6,
      ButtonPadInput.seven => 7,
      ButtonPadInput.eight => 8,
      ButtonPadInput.nine => 9,
      _ => throw Exception("Not a digit"),
    };
  }
}

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

  bool get _showFullExpression => _isOperationSet;

  NumberInput get _activeNumber =>
      _isOperationSet ? _secondNumber : _firstNumber;

  String get firstNumber => _firstNumber.toString();

  String get fullExpression =>
      _firstNumber.toString() +
      _operationInput.toString() +
      _secondNumber.toString();

  update(ButtonPadInput input) {
    switch (input) {
      case ButtonPadInput.allClear:
        _clearInput();
      case ButtonPadInput.backspace:
        _tryRemoveDigitOrOperation();
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

      case ButtonPadInput.zero ||
            ButtonPadInput.one ||
            ButtonPadInput.two ||
            ButtonPadInput.three ||
            ButtonPadInput.four ||
            ButtonPadInput.five ||
            ButtonPadInput.six ||
            ButtonPadInput.seven ||
            ButtonPadInput.eight ||
            ButtonPadInput.nine:
        _insertDigitFromButtonPad(input);

      case ButtonPadInput.equate:
        throw Exception("Not yet implemented");
    }
  }

  _insertDigitFromButtonPad(ButtonPadInput input) {
    int digit = NumberMapping.toDigit(input);
    _activeNumber.insertDigit(digit);
  }

  _clearInput() {
    _firstNumber = NumberInput();
    _operationInput = OperationInput();
    _secondNumber = NumberInput();
  }

  _tryRemoveDigitOrOperation() {
    try {
      _activeNumber.removeRightmostDigit();
    } catch (_) {
      if (_isOperationSet) {
        _removeOperation();
        _resetSecondNumber();
      }
    }
  }

  _removeOperation() {
    _setOperation(null);
  }

  _tryAddingDecimalPoint() {
    try {
      _activeNumber.addDecimalPoint();
    } catch (_) {}
  }

  _togglePercentage() {
    _activeNumber.togglePercentage();
  }

  _negateNumber() {
    _activeNumber.negate();
  }

  _setOperation(Operation? operation) {
    _operationInput.operation = operation;
  }

  _resetSecondNumber() {
    _secondNumber = NumberInput();
  }

  @override
  String toString() => _showFullExpression ? fullExpression : firstNumber;
}
