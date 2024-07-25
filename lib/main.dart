import 'package:calq/theme.dart';
import 'package:calq/widgets/calculator.dart';
import 'package:calq/widgets/top_bar.dart';
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
      themeMode: ThemeMode.light,
      theme: lightTheme,
      darkTheme: darkTheme,
      home: const Scaffold(
        appBar: TopBar(),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Calculator(),
        ),
      ),
    );
  }
}
