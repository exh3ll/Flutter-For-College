import 'package:flutter/material.dart';
import 'package:flutter_for_college/screens/dashboard_screen.dart';

ThemeData getAppThemeData() {
  return ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    useMaterial3: true,
    fontFamily: 'OpenSans regular',
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.deepPurple,
      foregroundColor: Colors.white,
      centerTitle: true,
      elevation: 4,
    ),
  );
}
