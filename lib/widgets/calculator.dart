import 'package:calq/button_pad_input.dart';
import 'package:calq/calculation.dart';
import 'package:calq/operation_input.dart';
import 'package:calq/widgets/button_pad.dart';
import 'package:calq/widgets/display_panel.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  late Calculation calculation;
  Calculation? prevCalculation;

  @override
  void initState() {
    super.initState();
    calculation = Calculation();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: DisplayPanel(
            prevCalculation: prevCalculation,
            calculation: calculation,
          ),
        ),
        ButtonPad(
          onPadInput: (input) {
            setState(() => updateCalculation(input));
          },
        ),
        const SizedBox(height: 16),
      ],
    );
  }

  updateCalculation(ButtonPadInput input) {
    switch (input) {
      case ButtonPadInput.allClear:
        calculation.clearInput();
      case ButtonPadInput.backspace:
        calculation.tryToRemoveDigitOrOperation();
      case ButtonPadInput.percent:
        calculation.togglePercentage();
      case ButtonPadInput.negate:
        calculation.negateNumber();
      case ButtonPadInput.decimalPoint:
        calculation.tryAddingDecimalPoint();

      case ButtonPadInput.add:
        calculation.setOperation(Operation.addition);
      case ButtonPadInput.subtract:
        calculation.setOperation(Operation.subtraction);
      case ButtonPadInput.multiply:
        calculation.setOperation(Operation.multiplication);
      case ButtonPadInput.divide:
        calculation.setOperation(Operation.division);

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
        calculation.insertDigitFromButtonPad(input);

      case ButtonPadInput.equate:
        tryToCalculate();
    }
  }

  tryToCalculate() {
    try {
      num result = calculation.calculate();
      prevCalculation = calculation;
      calculation = Calculation(firstNumber: result);
    } catch (_) {}
  }
}
