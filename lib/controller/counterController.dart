import 'package:flutter/material.dart';

class CounterController with ChangeNotifier {
  int _count = 0;
  List<int> _list = [];

  int get count {
    return _count;
  }

  List<int> get list {
    return [..._list];
  }

  void decrease() {
    // _count <= 0 ? _count = 0 : _count--;

    if (_count <= 0) {
      _list.clear();
    } else {
      _count--;
      _list.removeLast();
      // _list.add(_count);
    }

    print('List Value: $_list');

    notifyListeners();
  }

  void increase() {
    _count++;
    _list.add(_count);

    print('List Value: $_list');

    notifyListeners();
  }
}
