import 'package:flutter/material.dart';

enum ThemePreference { light, dark }

class ThemeProvider with ChangeNotifier {
  ThemePreference _themePreference = ThemePreference.light;

  ThemePreference get themePreference => _themePreference;

  void setThemePreference(ThemePreference preference) {
    _themePreference = preference;
    notifyListeners();
  }

  void toggleTheme() {
    _themePreference = _themePreference == ThemePreference.light ? ThemePreference.dark : ThemePreference.light;
    setThemePreference(_themePreference);
  }
}
