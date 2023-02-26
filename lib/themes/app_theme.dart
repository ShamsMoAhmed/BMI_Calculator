// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AppTheme {
  static var light = ThemeData.light().copyWith(
    colorScheme: ColorScheme.light().copyWith(),
    primaryColor: Color.fromARGB(255, 206, 198, 198),
    iconTheme: IconThemeData(color: Colors.brown),
    textTheme: TextTheme(
      bodyText2: TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontWeight: FontWeight.bold,
        ),
      bodyText1: ThemeData.light().textTheme.bodyText1?.copyWith(
            color: Color.fromARGB(255, 82, 82, 82),
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
    ),
  );
  static var dark = ThemeData.dark().copyWith(
    primaryColor: Color.fromARGB(20, 33, 170, 243),
    textTheme: TextTheme(
      bodyText2: TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
