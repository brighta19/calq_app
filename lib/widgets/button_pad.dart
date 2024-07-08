import 'package:calq/button_pad_input.dart';
import 'package:flutter/material.dart';

class ButtonPad extends StatelessWidget {
  const ButtonPad({super.key, this.onPadInput});

  final void Function(ButtonPadInput input)? onPadInput;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildButton(
              text: "AC",
              onTap: () => onPadInput?.call(ButtonPadInput.allClear),
              onSurfaceColor: const Color(0xff403e4c),
              // onSurfaceColor: Colors.white, // dark
              surfaceColor: Colors.white,
              // surfaceColor: const Color(0xff6c807e), // dark
            ),
            _buildButton(
              icon: const Icon(Icons.backspace_outlined),
              onTap: () => onPadInput?.call(ButtonPadInput.backspace),
              onSurfaceColor: const Color(0xff403e4c),
              // onSurfaceColor: Colors.white, // dark
              surfaceColor: Colors.white,
              // surfaceColor: const Color(0xff6c807e), // dark
            ),
            _buildButton(
              icon: const Icon(Icons.percent),
              onTap: () => onPadInput?.call(ButtonPadInput.percent),
              onSurfaceColor: const Color(0xff009788),
              surfaceColor: Colors.white,
              // surfaceColor: Colors.white, // dark
            ),
            _buildButton(
              text: "/",
              onTap: () => onPadInput?.call(ButtonPadInput.divide),
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
              onTap: () => onPadInput?.call(ButtonPadInput.seven),
              onSurfaceColor: const Color(0xff808080),
              // onSurfaceColor: Colors.white, // dark
              surfaceColor: Colors.transparent,
            ),
            _buildButton(
              text: "8",
              onTap: () => onPadInput?.call(ButtonPadInput.eight),
              onSurfaceColor: const Color(0xff808080),
              // onSurfaceColor: Colors.white, // dark
              surfaceColor: Colors.transparent,
            ),
            _buildButton(
              text: "9",
              onTap: () => onPadInput?.call(ButtonPadInput.nine),
              onSurfaceColor: const Color(0xff808080),
              // onSurfaceColor: Colors.white, // dark
              surfaceColor: Colors.transparent,
            ),
            _buildButton(
              icon: const Icon(Icons.close),
              onTap: () => onPadInput?.call(ButtonPadInput.multiply),
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
              onTap: () => onPadInput?.call(ButtonPadInput.four),
              onSurfaceColor: const Color(0xff808080),
              // onSurfaceColor: Colors.white, // dark
              surfaceColor: Colors.transparent,
            ),
            _buildButton(
              text: "5",
              onTap: () => onPadInput?.call(ButtonPadInput.five),
              onSurfaceColor: const Color(0xff808080),
              // onSurfaceColor: Colors.white, // dark
              surfaceColor: Colors.transparent,
            ),
            _buildButton(
              text: "6",
              onTap: () => onPadInput?.call(ButtonPadInput.six),
              onSurfaceColor: const Color(0xff808080),
              // onSurfaceColor: Colors.white, // dark
              surfaceColor: Colors.transparent,
            ),
            _buildButton(
              icon: const Icon(Icons.remove),
              onTap: () => onPadInput?.call(ButtonPadInput.subtract),
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
              onTap: () => onPadInput?.call(ButtonPadInput.one),
              onSurfaceColor: const Color(0xff808080),
              // onSurfaceColor: Colors.white, // dark
              surfaceColor: Colors.transparent,
            ),
            _buildButton(
              text: "2",
              onTap: () => onPadInput?.call(ButtonPadInput.two),
              onSurfaceColor: const Color(0xff808080),
              // onSurfaceColor: Colors.white, // dark
              surfaceColor: Colors.transparent,
            ),
            _buildButton(
              text: "3",
              onTap: () => onPadInput?.call(ButtonPadInput.three),
              onSurfaceColor: const Color(0xff808080),
              // onSurfaceColor: Colors.white, // dark
              surfaceColor: Colors.transparent,
            ),
            _buildButton(
              icon: const Icon(Icons.add),
              onTap: () => onPadInput?.call(ButtonPadInput.add),
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
              onTap: () => onPadInput?.call(ButtonPadInput.negate),
              onSurfaceColor: const Color(0xff403e4c),
              // onSurfaceColor: Colors.white, // dark
              surfaceColor: Colors.transparent,
            ),
            _buildButton(
              text: "0",
              onTap: () => onPadInput?.call(ButtonPadInput.zero),
              onSurfaceColor: const Color(0xff808080),
              // onSurfaceColor: Colors.white, // dark
              surfaceColor: Colors.transparent,
            ),
            _buildButton(
              text: ".",
              onTap: () => onPadInput?.call(ButtonPadInput.decimalPoint),
              onSurfaceColor: const Color(0xff403e4c),
              // onSurfaceColor: Colors.white, // dark
              surfaceColor: Colors.transparent,
            ),
            _buildButton(
              text: "=",
              onTap: () => onPadInput?.call(ButtonPadInput.equate),
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
    void Function()? onTap,
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
        onTap: onTap,
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
