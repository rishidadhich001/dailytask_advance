import 'package:flutter/material.dart';

class ThemeManager{
  static ThemeData lightTheme=ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white60,
    canvasColor: Colors.white,
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color:Colors.black,fontSize: 50,fontWeight: FontWeight.bold),
    ),
  );
  static ThemeData darkTheme=ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.black,
    canvasColor: Colors.white12,
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color:Colors.white,fontSize: 50,fontWeight: FontWeight.bold),
    ),
  );
}