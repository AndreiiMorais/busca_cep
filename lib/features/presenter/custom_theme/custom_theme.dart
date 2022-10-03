import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData themeData() {
    const primary = Color.fromARGB(255, 0, 26, 48);
    const secondary = Color.fromARGB(255, 233, 93, 0);

    return ThemeData().copyWith(
      colorScheme: ThemeData().colorScheme.copyWith(
            primary: primary,
            secondary: secondary,
          ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
          borderSide: BorderSide(
            color: secondary,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
          borderSide: BorderSide(
            color: primary,
          ),
        ),
      ),
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: secondary,
      ),
    );
  }
}
