import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(fontFamily: 'Poppins'),
    bodyMedium: TextStyle(fontFamily: 'Poppins'),
    displayLarge: TextStyle(fontFamily: 'Poppins'),
  ),
  useMaterial3: true,
);