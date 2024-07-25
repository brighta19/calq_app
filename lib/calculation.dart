import 'package:calq/button_pad_input.dart';
import 'package:calq/number_input.dart';
import 'package:calq/operation_input.dart';

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
  Calculation({num? firstNumber, Operation? operation, num? secondNumber}) {
    _firstNumber = NumberInput(firstNumber);
    _operationInput = OperationInput(operation);
    _secondNumber = NumberInput(secondNumber);
  }

  late NumberInput _firstNumber;
  late OperationInput _operationInput;
  late NumberInput _secondNumber;

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

  String get fullExpression => "$_firstNumber$_operationInput$_secondNumber";

  _removeOperation() {
    setOperation(null);
  }

  _resetSecondNumber() {
    _secondNumber = NumberInput();
  }

  insertDigitFromButtonPad(ButtonPadInput input) {
    int digit = NumberMapping.toDigit(input);
    _activeNumber.insertDigit(digit);
  }

  clearInput() {
    _firstNumber = NumberInput();
    _operationInput = OperationInput();
    _secondNumber = NumberInput();
  }

  tryToRemoveDigitOrOperation() {
    try {
      _activeNumber.removeRightmostDigit();
    } catch (_) {
      if (_isOperationSet) {
        _removeOperation();
        _resetSecondNumber();
      }
    }
  }

  tryAddingDecimalPoint() {
    try {
      _activeNumber.addDecimalPoint();
    } catch (_) {}
  }

  togglePercentage() {
    _activeNumber.togglePercentage();
  }

  negateNumber() {
    _activeNumber.negate();
  }

  setOperation(Operation? operation) {
    _operationInput.operation = operation;
  }

  num calculate() {
    num firstNumber = _firstNumber.toNum();
    num secondNumber = _secondNumber.toNum();
    Operation? operation = _operationInput.operation;

    return switch (operation) {
      Operation.addition => firstNumber + secondNumber,
      Operation.subtraction => firstNumber - secondNumber,
      Operation.multiplication => firstNumber * secondNumber,
      Operation.division => firstNumber / secondNumber,
      _ => throw Exception("Operation not implemented"),
    };
  }

  @override
  String toString() => _showFullExpression ? fullExpression : firstNumber;
}
