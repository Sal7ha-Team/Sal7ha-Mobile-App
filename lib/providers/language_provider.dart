import 'package:flutter/material.dart';

class LanguageProvider extends ChangeNotifier {
  // todo :to use this provider you must create an object in your widget then call method with new data
  // data
  String appLanguage = "en";

  // todo : change Language
  void changeLanguage(String newLanguage) {
    if (appLanguage == newLanguage) {
      return;
    }
    appLanguage = newLanguage;
    notifyListeners();
  }
}

