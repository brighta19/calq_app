import 'package:calq/calculation.dart';
import 'package:flutter/material.dart';

class CalculationDisplay extends StatelessWidget {
  const CalculationDisplay({super.key, required Calculation calculation})
      : _calculation = calculation;

  final Calculation _calculation;

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
              _calculation.toString(),
            ),
          ),
        ],
      ),
    );
  }
}
