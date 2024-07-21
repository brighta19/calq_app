import 'package:flutter/material.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  const TopBar({super.key})
      : preferredSize = const Size.fromHeight(kToolbarHeight);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.menu),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.dark_mode_outlined),
        ),
        const SizedBox(width: 8),
      ],
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: const Color(0xff009788),
            ),
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: const Text(
              style: TextStyle(
                fontSize: 16,
                color: Color(0xffffffff),
                height: 1.1,
              ),
              "Calculator",
            ),
          ),
          const SizedBox(width: 8),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.transparent,
            ),
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: const Text(
              style: TextStyle(
                fontSize: 16,
                color: Color(0xffc1c1c1),
                height: 1.1,
              ),
              "Converter",
            ),
          ),
        ],
      ),
    );
  }
}
