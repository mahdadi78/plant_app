import 'package:flutter/material.dart';

class MyTheme {
  static final darkTheme = ThemeData(
    primaryColor: Colors.green,
    scaffoldBackgroundColor: Colors.grey.shade800,
    dividerColor: Colors.white,
    cardColor: Colors.white38,
  );
  static final lightTheme = ThemeData(
    primaryColor: Colors.green.shade800,
    scaffoldBackgroundColor: Colors.white,
    dividerColor: Colors.black54,
    cardColor: Colors.grey.shade500,
  );
}
