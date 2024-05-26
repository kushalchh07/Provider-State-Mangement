import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FavouriteItemProvider with ChangeNotifier {
  List<int> _items = [];

  List<int> get items => _items;
  void getItem(int value) {
    _items.add(value);
    notifyListeners();
  }
  void remove(int value) {
    _items.remove(value);
    notifyListeners();
  }
}
