import 'package:flutter/material.dart';

class CalculationDisplay extends StatelessWidget {
  const CalculationDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SingleChildScrollView(
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
              style: TextStyle(
                fontSize: 48,
              ),
              "0",
            ),
          ),
        ],
      ),
    );
  }
}
