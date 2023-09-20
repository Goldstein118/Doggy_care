import 'package:flutter/material.dart';

class ValidProvider with ChangeNotifier {
  bool _IsEmailEmpty = true;
  bool _IsPassEmpty = true;
  bool _IsTelpEmpty = true;
  bool _IsUmurEmpty = true;
  bool _IsTinggiEmpty = true;
  bool _IsGejalaEmpty = true;
  bool _IsAlergiEmpty = true;
   bool _Isage = true;
  bool _Isweight = true;
  bool _Isheight = true;


  bool get getUmurEmpty => _IsUmurEmpty;
  bool get getTinggiEmpty => _IsTinggiEmpty;
  bool get getGejalaEmpty => _IsGejalaEmpty;
  bool get getAlergiEmpty => _IsAlergiEmpty;



  bool get getEmailempty => _IsEmailEmpty;
  bool get getPassEmpty => _IsPassEmpty;
  bool get getTelpEmpty => _IsTelpEmpty;

  bool get getage => _Isage;
  bool get getweight => _Isweight;
  bool get getheight => _Isheight;


  set setIsEmailEmpty(value) {
    _IsEmailEmpty = value;
    notifyListeners();
  }

  set setIsPassEmpty(value) {
    _IsPassEmpty = value;
    notifyListeners();
  }

  set setIsTelpEmpty(value) {
    _IsTelpEmpty = value;
    notifyListeners();
  }
   set setIsUmurEmpty(value) {
    _IsUmurEmpty = value;
    notifyListeners();
  }

  set setIsTinggiEmpty(value) {
    _IsTinggiEmpty = value;
    notifyListeners();
  }

  set setIsGejalaEmpty(value) {
    _IsGejalaEmpty = value;
    notifyListeners();
  }

  set setIsAlergiEmpty(value) {
    _IsAlergiEmpty = value;
    notifyListeners();
  }
    set setIsage(value) {
    _Isage = value;
    notifyListeners();
  }

  set setIsweight(value) {
    _Isweight = value;
    notifyListeners();
  }

  set setIsheight(value) {
    _Isheight = value;
    notifyListeners();
  }

}
