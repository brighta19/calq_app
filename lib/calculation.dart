import 'package:calq/button_pad_input.dart';
import 'number_input.dart';

class Calculation {
  NumberInput firstNumber = NumberInput();

  update(ButtonPadInput input) {
    switch (input) {
      case ButtonPadInput.allClear:
        firstNumber = NumberInput();
      case ButtonPadInput.backspace:
        try {
          firstNumber.removeRightmostDigit();
        } catch (_) {}
      case ButtonPadInput.percent:
        firstNumber.togglePercentage();
      case ButtonPadInput.negate:
        firstNumber.negate();
      case ButtonPadInput.decimalPoint:
        try {
          firstNumber.addDecimalPoint();
        } catch (_) {}

      case ButtonPadInput.zero:
        firstNumber.addDigit(0);
      case ButtonPadInput.one:
        firstNumber.addDigit(1);
      case ButtonPadInput.two:
        firstNumber.addDigit(2);
      case ButtonPadInput.three:
        firstNumber.addDigit(3);
      case ButtonPadInput.four:
        firstNumber.addDigit(4);
      case ButtonPadInput.five:
        firstNumber.addDigit(5);
      case ButtonPadInput.six:
        firstNumber.addDigit(6);
      case ButtonPadInput.seven:
        firstNumber.addDigit(7);
      case ButtonPadInput.eight:
        firstNumber.addDigit(8);
      case ButtonPadInput.nine:
        firstNumber.addDigit(9);
      default:
    }
  }

  @override
  String toString() => firstNumber.toString();
}
