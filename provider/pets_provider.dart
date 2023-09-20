import 'package:flutter/material.dart';

class TaskProvider extends ChangeNotifier {
  final List<Map<String, String>> _tasks = [];
  List<Map<String, String>> get tasks => _tasks;

  set addTask(val) {
    _tasks.add(val);
    notifyListeners();
  }
}
