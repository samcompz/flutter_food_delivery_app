import 'package:flutter/material.dart';
import '../models/menu_item.dart';

class CartProvider with ChangeNotifier {
  List<MenuItem> _items = [];

  List<MenuItem> get items => _items;

  double get totalPrice {
    return _items.fold(0, (sum, item) => sum + item.price);
  }

  void addItem(MenuItem item) {
    _items.add(item);
    notifyListeners();
  }

  void removeItem(MenuItem item) {
    _items.remove(item);
    notifyListeners();
  }

  void clearCart() {
    _items.clear();
    notifyListeners();
  }
}