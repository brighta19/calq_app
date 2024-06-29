import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _buildAppBar(),
        body: const Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      leading: const Icon(
        color: Color(0xffa7a7a7),
        Icons.menu,
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 12),
          child: Icon(
            color: Color(0xffa7a7a7),
            Icons.dark_mode_outlined,
          ),
        ),
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
