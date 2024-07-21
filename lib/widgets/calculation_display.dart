import 'package:calq/calculation.dart';
import 'package:flutter/material.dart';

enum _CalculationViewOptions {
  firstNumber,
  fullExpression,
}

class CalculationDisplay extends StatelessWidget {
  const CalculationDisplay({super.key, required Calculation calculation})
      : _calculation = calculation;

  final Calculation _calculation;

  final _CalculationViewOptions _calculationViewOptions =
      _CalculationViewOptions.firstNumber;

  String get _calculationView {
    switch (_calculationViewOptions) {
      case _CalculationViewOptions.firstNumber:
        return _calculation.firstNumber;
      case _CalculationViewOptions.fullExpression:
        return _calculation.fullExpression;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Text(
              style: TextStyle(
                color: Color(0xffcecece),
                fontSize: 24,
              ),
              "4+5",
            ),
          ),
          SingleChildScrollView(
            reverse: true,
            scrollDirection: Axis.horizontal,
            child: Text(
              style: const TextStyle(
                fontSize: 48,
              ),
              _calculationView,
            ),
          ),
        ],
      ),
    );
  }
}
