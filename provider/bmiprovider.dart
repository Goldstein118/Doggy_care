import 'package:flutter/material.dart';


class Bmiprovider with ChangeNotifier{

  final List<Map<String, String>> _data = [];
  List<Map<String, String>> get data => _data;

  set addTask(val) {
    _data.add(val);
    notifyListeners();
  }
}

