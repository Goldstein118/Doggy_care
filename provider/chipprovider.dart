import 'package:flutter/material.dart';

class ChoiceChipFdbck with ChangeNotifier {
  bool choice1 = false;
  bool choice2 = false;
  bool choice3 = false;
  bool choice4 = false;
  bool choice5 = false;
  bool choice6 = false;

  bool get getchoice1 => choice1;
  bool get getchoice2 => choice2;
  bool get getchoice3 => choice3;
  bool get getchoice4 => choice4;
  bool get getchoice5 => choice5;
  bool get getchoice6 => choice6;

  set setchoice1(value) {
    choice1 = value;
    notifyListeners();
  }

  set setchoice2(value) {
    choice2 = value;
    notifyListeners();
  }

  set setchoice3(value) {
    choice3 = value;
    notifyListeners();
  }

  set setchoice4(value) {
    choice4 = value;
    notifyListeners();
  }

  set setchoice5(value) {
    choice5 = value;
    notifyListeners();
  }

  set setchoice6(value) {
    choice6 = value;
    notifyListeners();
  }
}
