import 'button_pad_input.dart';
import 'operation_input.dart';
import 'number_input.dart';

class Calculation {
  NumberInput _firstNumber = NumberInput();
  OperationInput _operation = OperationInput(operation: Operation.addition);
  NumberInput _secondNumber = NumberInput();

  update(ButtonPadInput input) {
    switch (input) {
      case ButtonPadInput.allClear:
        _firstNumber = NumberInput();
      case ButtonPadInput.backspace:
        try {
          _firstNumber.removeRightmostDigit();
        } catch (_) {}
      case ButtonPadInput.percent:
        _firstNumber.togglePercentage();
      case ButtonPadInput.negate:
        _firstNumber.negate();
      case ButtonPadInput.decimalPoint:
        try {
          _firstNumber.addDecimalPoint();
        } catch (_) {}

      case ButtonPadInput.zero:
        _firstNumber.addDigit(0);
      case ButtonPadInput.one:
        _firstNumber.addDigit(1);
      case ButtonPadInput.two:
        _firstNumber.addDigit(2);
      case ButtonPadInput.three:
        _firstNumber.addDigit(3);
      case ButtonPadInput.four:
        _firstNumber.addDigit(4);
      case ButtonPadInput.five:
        _firstNumber.addDigit(5);
      case ButtonPadInput.six:
        _firstNumber.addDigit(6);
      case ButtonPadInput.seven:
        _firstNumber.addDigit(7);
      case ButtonPadInput.eight:
        _firstNumber.addDigit(8);
      case ButtonPadInput.nine:
        _firstNumber.addDigit(9);
      default:
    }
  }

  String get firstNumber => _firstNumber.toString();
  String get fullExpression =>
      _firstNumber.toString() +
      _operation.toString() +
      _secondNumber.toString();
}
