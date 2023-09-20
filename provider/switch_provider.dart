import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/dark_theme_preferences.dart';


class SwitchProvider extends ChangeNotifier {
  DarkThemePreferences darkThemePreferences = DarkThemePreferences();
  bool _enableSwitch = false;



  bool get getEnableSwitch => _enableSwitch;

  set setEnableSwitch(bool value) {
    _enableSwitch = value;
    notifyListeners();
    darkThemePreferences.setDarkTheme(value);
  

  }
  

}
