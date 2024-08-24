import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  final List<Widget> _icons = <Widget>[
    const Icon(Icons.light_mode),
    const Icon(Icons.dark_mode),
  ];
  List<Widget> get getIcons => _icons;

  bool _selectedTheme = true;

  ThemeMode _themeMode = ThemeMode.light;

  get getThemeMode => _themeMode;

  get getSelectedTheme => _selectedTheme;

  setSelectedTheme(bool value) {
    if (value == true) {
      _selectedTheme = true;
      _themeMode = ThemeMode.light;
    } else if (value == false) {
      _selectedTheme = false;
      _themeMode = ThemeMode.dark;
    } else {
      _selectedTheme = true;
      _themeMode = ThemeMode.light;
    }
    notifyListeners();
  }
}
