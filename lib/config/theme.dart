import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  colorScheme: const ColorScheme.light(
    primary: Colors.blue,
    onPrimary: Colors.white,
    secondary: Colors.brown,
  ),
  primaryColor: Colors.green,
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontSize: 50,
      color: Colors.amber,
      fontWeight: FontWeight.w700,
    ),
    headlineSmall: TextStyle(
      fontSize: 12,
      color: Colors.greenAccent,
      fontWeight: FontWeight.w300,
      fontStyle: FontStyle.italic,
    ),
  ),
  scaffoldBackgroundColor: Colors.white,
);
ThemeData darkTheme = ThemeData(
  colorScheme: const ColorScheme.dark(
    primary: Colors.orange,
    onPrimary: Colors.teal,
    secondary: Colors.brown,
  ),
  primaryColor: Colors.red,
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontSize: 50,
      color: Colors.blue,
      fontWeight: FontWeight.w700,
    ),
    headlineSmall: TextStyle(
      fontSize: 12,
      color: Colors.amber,
      fontWeight: FontWeight.w300,
      fontStyle: FontStyle.italic,
    ),
  ),
  scaffoldBackgroundColor: Colors.black,
);
