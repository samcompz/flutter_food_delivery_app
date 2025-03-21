import 'package:food_delivery_app/models/food.dart';

class CartItem {
  Food food;                  //THE food selected by the user
  List<Addon> selectedAddons; //the addons the user has selected
  int quantity;               //the total number of items selected

  //constructor
  CartItem({
    required this.food,
    required this.selectedAddons,
    required this.quantity,
  });

  //getter
  double get totalPrice {
    double addonsPrice =
        selectedAddons.fold(0, (sum, addon) => sum + addon.price);
    return (food.price + addonsPrice) * quantity;
  }
}
