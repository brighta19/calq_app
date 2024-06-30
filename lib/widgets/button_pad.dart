import 'package:flutter/material.dart';

class ButtonPad extends StatelessWidget {
  const ButtonPad({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildButton("AC", color: const Color(0xff403e4c)),
            _buildButton("<", color: const Color(0xff403e4c)),
            _buildButton("%", color: const Color(0xff009788)),
            _buildButton("/", color: const Color(0xff009788)),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildButton("7", color: const Color(0xff808080)),
            _buildButton("8", color: const Color(0xff808080)),
            _buildButton("9", color: const Color(0xff808080)),
            _buildButton("x", color: const Color(0xff009788)),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildButton("4", color: const Color(0xff808080)),
            _buildButton("5", color: const Color(0xff808080)),
            _buildButton("6", color: const Color(0xff808080)),
            _buildButton("-", color: const Color(0xff009788)),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildButton("1", color: const Color(0xff808080)),
            _buildButton("2", color: const Color(0xff808080)),
            _buildButton("3", color: const Color(0xff808080)),
            _buildButton("+", color: const Color(0xff009788)),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildButton("+-", color: const Color(0xff403e4c)),
            _buildButton("0", color: const Color(0xff808080)),
            _buildButton(".", color: const Color(0xff403e4c)),
            _buildButton("=", color: const Color(0xff009788)),
          ],
        ),
      ],
    );
  }

  Widget _buildButton(String text, {required Color color}) {
    return Material(
      borderRadius: BorderRadius.circular(100),
      child: InkWell(
        borderRadius: BorderRadius.circular(100),
        onTap: () {},
        child: SizedBox(
          width: 64,
          height: 64,
          // padding: const EdgeInsets.all(16),
          child: Center(
            child: Text(
              style: TextStyle(
                fontSize: 22,
                height: 1.1,
                color: color,
              ),
              text,
            ),
          ),
        ),
      ),
    );
  }
}
