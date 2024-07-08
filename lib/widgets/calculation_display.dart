import 'package:calq/calculation.dart';
import 'package:flutter/material.dart';

class CalculationDisplay extends StatelessWidget {
  const CalculationDisplay({super.key, required this.calculation});

  final Calculation calculation;

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
            scrollDirection: Axis.horizontal,
            child: Text(
              style: const TextStyle(
                fontSize: 48,
              ),
              calculation.toString(),
            ),
          ),
        ],
      ),
    );
  }
}
