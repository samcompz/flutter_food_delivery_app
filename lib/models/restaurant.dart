import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/food.dart';
import 'package:intl/intl.dart';

import 'cart_item.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    //list of food menu
    Food(
        name: "Classic Cheeseburger",
        description:
            "A juicy beef patty with melted chedder, lettuce, tomato and a hint of onion",
        imagePath: "lib/images/cheese_burger.jpeg",
        price: 0.99,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(price: 0.99, name: "Extra Cheese Burger"),
          Addon(price: 1.99, name: "Bacon"),
          Addon(price: 8.99, name: "Avocado"),
          Addon(price: 2.99, name: "Egg"),
          Addon(price: 1.99, name: "Sausage"),
          Addon(price: 3.99, name: "Tomato Pasta"),
          Addon(price: 4.99, name: "meat Toast"),
        ]),

    //salds
    Food(
        name: "Pear Pie",
        description:
            "A tangy and sweet key peer pie with a rich, creamy filling and a crumbly graham cracker",
        imagePath:"lib/images/cheese_burger.jpeg",
        price: 5.49,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(price: 0.99, name: "Extra Cheese Burger"),
          Addon(price: 1.99, name: "Bacon"),
          Addon(price: 8.99, name: "Avocado"),
          Addon(price: 2.99, name: "Egg"),
          Addon(price: 1.99, name: "Sausage"),
          Addon(price: 3.99, name: "Tomato Pasta"),
          Addon(price: 4.99, name: "meat Toast"),
        ]),

    //deserts
    Food(
        name: "Red Velvet Lava Cake",
        description:
            "A juicy beef patty with melted chedder, lettuce, tomato and a hint of onion",
        imagePath: "lib/images/cheese_burger.jpeg",
        price: 0.99,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(price: 0.99, name: "Extra Cheese Burger"),
          Addon(price: 1.99, name: "Bacon"),
          Addon(price: 8.99, name: "Avocado"),
          Addon(price: 2.99, name: "Egg"),
          Addon(price: 1.99, name: "Sausage"),
          Addon(price: 3.99, name: "Tomato Pasta"),
          Addon(price: 4.99, name: "meat Toast"),
        ]),

    //drinks
    Food(
        name: "Classic Cheeseburger",
        description:
            "A juicy beef patty with melted chedder, lettuce, tomato and a hint of onion",
        imagePath: "lib/images/cheese_burger.jpeg",
        price: 0.99,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(price: 0.99, name: "Extra Cheese Burger"),
          Addon(price: 1.99, name: "Bacon"),
          Addon(price: 8.99, name: "Avocado"),
          Addon(price: 2.99, name: "Egg"),
          Addon(price: 1.99, name: "Sausage"),
          Addon(price: 3.99, name: "Tomato Pasta"),
          Addon(price: 4.99, name: "meat Toast"),
        ])
  ];

/*
G E T T E R S
 */
  List<Food> get menu => _menu;

  List<CartItem> get cart => _cart;

/*
O P E R A T I O N S
 */
  //user cart
  final List<CartItem> _cart = [];

//add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    //see if there is a cart item alrady with the same food and addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      bool isSameFood = item.food == food;

      //check if the list of selected addons are the same
      bool isSameAddons =
          const ListEquality().equals(item.selectedAddons, selectedAddons);
      return isSameFood && isSameAddons;
    });

    //if item exists increase its quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }

    //otherwise add a new cart item to the cart
    else {
      _cart.add(CartItem(food: food, selectedAddons: selectedAddons, quantity: cartItem!.quantity));
    }
  }

//remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);
    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

//get total price of cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;
      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

//get total number of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }

    return totalItemCount;
  }

//clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

/*
H E L P E R S
 */

//generate a receipt
String displayCartReceipt(){
  final receipt = StringBuffer();
  receipt.writeln("Here's your receipt");
  receipt.writeln();

  //format date to include up to seconds only
  String formattedDate = DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

  receipt.writeln(formattedDate);
  receipt.writeln();
  receipt.writeln("=====================");

  for(final cartItem in _cart){
    receipt.writeln(
      "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}) ");
      if(cartItem.selectedAddons.isNotEmpty){
        receipt.writeln("   Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
    }
      receipt.writeln();

  }

  receipt.writeln("---------------------");
  receipt.writeln();
  receipt.writeln("Total Items: ${getTotalItemCount()}");
  receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");


  return receipt.toString();
}


//format double price value to money
String _formatPrice(double price){
  return "KShs. ${price.toStringAsFixed(2)}";
}


//format list of addons into a string summary
String _formatAddons(List<Addon> addons){
  return addons
      .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
      .join(", ");
}
}
