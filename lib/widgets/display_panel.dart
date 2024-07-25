import 'package:calq/calculation.dart';
import 'package:flutter/material.dart';

class DisplayPanel extends StatelessWidget {
  const DisplayPanel({
    super.key,
    required Calculation calculation,
    Calculation? prevCalculation,
  })  : _calculation = calculation,
        _prevCalculation = prevCalculation;

  final Calculation _calculation;
  final Calculation? _prevCalculation;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Text(
              style: const TextStyle(
                color: Color(0xffcecece),
                fontSize: 24,
              ),
              _prevCalculation?.toString() ?? "",
            ),
          ),
          SingleChildScrollView(
            reverse: true,
            scrollDirection: Axis.horizontal,
            child: Text(
              style: const TextStyle(
                fontSize: 48,
              ),
              _calculation.toString(),
            ),
          ),
        ],
      ),
    );
  }
}
