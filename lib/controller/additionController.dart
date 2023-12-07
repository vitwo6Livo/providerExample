import 'package:flutter/material.dart';

class AdditionController with ChangeNotifier {
  int _add = 0;

  int get add {
    return _add;
  }

  void sum(int a, int b) {
    _add = a + b;

    notifyListeners();
  }
}
