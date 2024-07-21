import 'package:flutter/material.dart';

final ThemeData _theme = ThemeData(
  primaryColor: const Color(0xff009788),
);

final ThemeData lightTheme = _theme.copyWith(
  brightness: Brightness.light,
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xff009788),
    onPrimary: Colors.red,
    secondary: Colors.red,
    onSecondary: Colors.red,
    error: Colors.red,
    onError: Colors.red,
    surface: Colors.white, // appbar bg
    onSurface: Colors.red,
  ),
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(
    color: Colors.white,
    iconTheme: IconThemeData(
      color: Color(0xffa7a7a7),
    ),
  ),
);

final ThemeData darkTheme = _theme.copyWith(
  brightness: Brightness.dark,
  colorScheme: const ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xff009788),
    onPrimary: Colors.red,
    secondary: Colors.red,
    onSecondary: Colors.red,
    error: Colors.red,
    onError: Colors.red,
    surface: Color(0xff283637), // appbar bg
    onSurface: Colors.red,
  ),
  scaffoldBackgroundColor: const Color(0xff283637),
  appBarTheme: const AppBarTheme(
    color: Color(0xff283637),
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
  ),
);
