import 'package:flutter/material.dart';
import '../calculation.dart';
import 'button_pad.dart';
import 'calculation_display.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  late Calculation calculation;

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
          child: CalculationDisplay(calculation: calculation),
        ),
        ButtonPad(
          onPadInput: (input) {
            debugPrint(input.name);
            setState(() => calculation.update(input));
          },
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
