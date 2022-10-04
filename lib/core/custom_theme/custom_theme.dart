import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData themeData() {
    const primary = Color.fromARGB(255, 0, 26, 48);
    const secondary = Color.fromARGB(255, 233, 93, 0);
    const tertiary = Color.fromARGB(255, 253, 223, 177);
    const error = Colors.red;

    return ThemeData().copyWith(
      colorScheme: ThemeData().colorScheme.copyWith(
            primary: primary,
            secondary: secondary,
            tertiary: tertiary,
          ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 2,
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
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
            borderSide: BorderSide(
              color: error,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
            borderSide: BorderSide(color: error),
          ),
          errorStyle: TextStyle(fontSize: 14)),
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: secondary,
      ),
      dialogTheme: DialogTheme(
        backgroundColor: tertiary,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      textTheme: const TextTheme(
        //Used on Snackbars
        subtitle2: TextStyle(
          color: primary,
          fontSize: 18,
        ),
        subtitle1: TextStyle(color: Colors.black),
        headline6: TextStyle(color: primary),
      ),
      listTileTheme: const ListTileThemeData(
        textColor: primary,
      ),
      cardTheme: const CardTheme(color: tertiary, elevation: 5),
    );
  }
}
