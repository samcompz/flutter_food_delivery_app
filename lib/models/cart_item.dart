import 'package:flutter/cupertino.dart';
import 'package:food_delivery_app/models/food.dart';

class CartItem {
  Food food;
  List<Addon> selectedAddons;
  int quantity;

  CartItem({
    required this.food,
    required this.selectedAddons,
    required this.quantity,
  });

  double get totalPrice{
    double addonsPrice =
        selectedAddons.fold(0, (sum, addon)=> sum + addon.price);
    return (food.price + addonsPrice)*quantity;
  }
}







