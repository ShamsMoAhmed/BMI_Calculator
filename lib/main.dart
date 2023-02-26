// ignore_for_file: prefer_const_constructors

import 'package:bmi_calculator/controllers/app_setting.dart';
import 'package:bmi_calculator/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: AppSettingController()),
      ],
      builder: (context, child) {
        return MaterialApp(
          theme: AppTheme.light,
          darkTheme: AppTheme.dark,
          themeMode: Provider.of<AppSettingController>(context).isDarkMode
              ? ThemeMode.dark
              : ThemeMode.light,
          home: HomeScreen(),
        );
      },
    ),
  );
}
