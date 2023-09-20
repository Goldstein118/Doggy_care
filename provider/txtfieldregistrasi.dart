import 'package:flutter/material.dart';

class TxtFieldRegistrasi with ChangeNotifier {
  bool _isvisibleTelp = false;
  bool _isvisiblePass = false;

  bool get getisvisibleTelp => _isvisibleTelp;
  bool get getisvisiblePass => _isvisiblePass;

  set setisvisibleTelp(value) {
    _isvisibleTelp = value;
    notifyListeners();
  }

  set setisvisiblePass(value) {
    _isvisiblePass = value;
    notifyListeners();
  }
}
