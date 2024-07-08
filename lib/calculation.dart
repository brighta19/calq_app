import 'package:calq/button_pad_input.dart';

class Calculation {
  String _calculationString = "";

  update(ButtonPadInput input) {
    switch (input) {
      case ButtonPadInput.allClear:
        _calculationString = "";
      case ButtonPadInput.backspace:
        if (_calculationString.isNotEmpty) {
          _calculationString =
              _calculationString.substring(0, _calculationString.length - 1);
        }
      case ButtonPadInput.zero:
        _calculationString += "0";
      case ButtonPadInput.one:
        _calculationString += "1";
      case ButtonPadInput.two:
        _calculationString += "2";
      case ButtonPadInput.three:
        _calculationString += "3";
      case ButtonPadInput.four:
        _calculationString += "4";
      case ButtonPadInput.five:
        _calculationString += "5";
      case ButtonPadInput.six:
        _calculationString += "6";
      case ButtonPadInput.seven:
        _calculationString += "7";
      case ButtonPadInput.eight:
        _calculationString += "8";
      case ButtonPadInput.nine:
        _calculationString += "9";
      default:
    }
  }

  @override
  String toString() => _calculationString;
}
