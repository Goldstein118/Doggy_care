import 'package:flutter/material.dart';

class txtprovider with ChangeNotifier {
  bool _isvisibleEmail = false;
  bool _isvisiblePass = false;
  bool _fav1 = false;
  bool _fav2 = false;
  bool _fav3 = false;

  bool get getisvisibleEmail => _isvisibleEmail;
  bool get getisvisiblePass => _isvisiblePass;
  bool get getfav1 => _fav1;
  bool get getfav2 => _fav2;
  bool get getfav3 => _fav3;

  set setisvisibleEmail(value) {
    _isvisibleEmail = value;
    notifyListeners();
  }

  set setfav1(value) {
    _fav1 = value;
    notifyListeners();
  }
  set setfav2(value) {
    _fav2 = value;
    notifyListeners();
  }
  set setfav3(value) {
    _fav3 = value;
    notifyListeners();
  }

  set setisvisiblePass(value) {
    _isvisiblePass = value;
    notifyListeners();
  }
}
