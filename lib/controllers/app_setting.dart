import 'package:flutter/material.dart';

class AppSettingController extends ChangeNotifier {
  bool isDarkMode = false;
  changeTheme() {
    isDarkMode = !isDarkMode;
    notifyListeners();
  }
}
