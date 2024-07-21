import 'package:flutter/material.dart';
import 'theme.dart';
import 'widgets/calculator.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: lightTheme,
      darkTheme: darkTheme,
      home: Scaffold(
        appBar: AppBar(
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
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
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
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
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
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Calculator(),
        ),
      ),
    );
  }
}
