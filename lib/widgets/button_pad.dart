import 'package:flutter/material.dart';

class ButtonPad extends StatelessWidget {
  const ButtonPad({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildButton(
              text: "AC",
              onSurfaceColor: const Color(0xff403e4c),
              // onSurfaceColor: Colors.white, // dark
              surfaceColor: Colors.white,
              // surfaceColor: const Color(0xff6c807e), // dark
            ),
            _buildButton(
              icon: const Icon(Icons.backspace_outlined),
              onSurfaceColor: const Color(0xff403e4c),
              // onSurfaceColor: Colors.white, // dark
              surfaceColor: Colors.white,
              // surfaceColor: const Color(0xff6c807e), // dark
            ),
            _buildButton(
              icon: const Icon(Icons.percent),
              onSurfaceColor: const Color(0xff009788),
              surfaceColor: Colors.white,
              // surfaceColor: Colors.white, // dark
            ),
            _buildButton(
              text: "/",
              onSurfaceColor: const Color(0xff009788),
              surfaceColor: Colors.white,
              // surfaceColor: Colors.white, // dark
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildButton(
              text: "7",
              onSurfaceColor: const Color(0xff808080),
              // onSurfaceColor: Colors.white, // dark
              surfaceColor: Colors.transparent,
            ),
            _buildButton(
              text: "8",
              onSurfaceColor: const Color(0xff808080),
              // onSurfaceColor: Colors.white, // dark
              surfaceColor: Colors.transparent,
            ),
            _buildButton(
              text: "9",
              onSurfaceColor: const Color(0xff808080),
              // onSurfaceColor: Colors.white, // dark
              surfaceColor: Colors.transparent,
            ),
            _buildButton(
              icon: const Icon(Icons.close),
              onSurfaceColor: const Color(0xff009788),
              surfaceColor: Colors.white,
              // surfaceColor: Colors.white, // dark
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildButton(
              text: "4",
              onSurfaceColor: const Color(0xff808080),
              // onSurfaceColor: Colors.white, // dark
              surfaceColor: Colors.transparent,
            ),
            _buildButton(
              text: "5",
              onSurfaceColor: const Color(0xff808080),
              // onSurfaceColor: Colors.white, // dark
              surfaceColor: Colors.transparent,
            ),
            _buildButton(
              text: "6",
              onSurfaceColor: const Color(0xff808080),
              // onSurfaceColor: Colors.white, // dark
              surfaceColor: Colors.transparent,
            ),
            _buildButton(
              icon: const Icon(Icons.remove),
              onSurfaceColor: const Color(0xff009788),
              surfaceColor: Colors.white,
              // surfaceColor: Colors.white, // dark
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildButton(
              text: "1",
              onSurfaceColor: const Color(0xff808080),
              // onSurfaceColor: Colors.white, // dark
              surfaceColor: Colors.transparent,
            ),
            _buildButton(
              text: "2",
              onSurfaceColor: const Color(0xff808080),
              // onSurfaceColor: Colors.white, // dark
              surfaceColor: Colors.transparent,
            ),
            _buildButton(
              text: "3",
              onSurfaceColor: const Color(0xff808080),
              // onSurfaceColor: Colors.white, // dark
              surfaceColor: Colors.transparent,
            ),
            _buildButton(
              icon: const Icon(Icons.add),
              onSurfaceColor: const Color(0xff009788),
              surfaceColor: Colors.white,
              // surfaceColor: Colors.white, // dark
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildButton(
              text: "+/-",
              onSurfaceColor: const Color(0xff403e4c),
              // onSurfaceColor: Colors.white, // dark
              surfaceColor: Colors.transparent,
            ),
            _buildButton(
              text: "0",
              onSurfaceColor: const Color(0xff808080),
              // onSurfaceColor: Colors.white, // dark
              surfaceColor: Colors.transparent,
            ),
            _buildButton(
              text: ".",
              onSurfaceColor: const Color(0xff403e4c),
              // onSurfaceColor: Colors.white, // dark
              surfaceColor: Colors.transparent,
            ),
            _buildButton(
              text: "=",
              onSurfaceColor: const Color(0xff009788),
              surfaceColor: Colors.white,
              // onSurfaceColor: Colors.white, // dark
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildButton({
    String? text,
    Icon? icon,
    // void Function()? onTap,
    required Color onSurfaceColor,
    required Color surfaceColor,
  }) {
    Widget? label;
    if (text != null) {
      label = Text(
        style: TextStyle(
          fontSize: 22,
          height: 1.1,
          color: onSurfaceColor,
        ),
        text,
      );
    } else if (icon != null) {
      label = IconTheme(
        data: IconThemeData(
          color: onSurfaceColor,
        ),
        child: icon,
      );
    }

    return Material(
      color: surfaceColor,
      borderRadius: BorderRadius.circular(100),
      child: InkWell(
        borderRadius: BorderRadius.circular(100),
        onTap: () {},
        child: SizedBox(
          width: 64,
          height: 64,
          child: Center(
            child: label,
          ),
        ),
      ),
    );
  }
}
