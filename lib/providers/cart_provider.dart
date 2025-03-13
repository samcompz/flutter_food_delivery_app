import 'package:flutter/material.dart';
import '../models/menu_item.dart';

class CartProvider with ChangeNotifier {
  final List<MenuItem> _items = [];   //initialise a list of items(cart items)

  List<MenuItem> get items => _items;  //getter method

  double get totalPrice {
    return _items.fold(0, (sum, item) => sum + item.price);
  }

  void addItem(MenuItem item) { //adds item to the cart
    _items.add(item);
    notifyListeners();
  }

  void removeItem(MenuItem item) { //removes item from the cart
    _items.remove(item);
    notifyListeners();
  }

  void clearCart() {  //clears the cart
    _items.clear();
    notifyListeners();
  }
}