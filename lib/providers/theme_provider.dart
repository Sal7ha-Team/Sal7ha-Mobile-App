import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier{
  // todo :to use this provider you must create an object in your widget then call method with new data

  // data
  ThemeMode currentTheme = ThemeMode.light;

  // change theme
  void changeTheme(ThemeMode newTheme) {
    if (currentTheme == newTheme) {
      return;
    }
    currentTheme = newTheme;
    notifyListeners();
  }
}