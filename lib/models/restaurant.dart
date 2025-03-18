import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/food.dart';

class Restaurant extends ChangeNotifier{
  final List<Food> _menu = [
    //list of food menu
    Food(
        name: "Classic Cheeseburger",
        description:
        "A juicy beef patty with melted chedder, lettuce, tomato and a hint of onion",
        imagePath: "lib/images/burgers/cheese_burger.jpeg",
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
        imagePath: "lib/images/desserts/pearpie_desert.jpeg",
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
        imagePath: "lib/images/burgers/cheese_burger.jpeg",
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
        imagePath: "lib/images/burgers/cheese_burger.jpeg",
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

/*
O P E R A T I O N S
 */

//add to cart


//remove from cart

//get total price of cart

//get total number of items in cart

//clear cart

/*
H E L P E R S
 */

//generate a receipt


//format double price value to money

//format list of addons into a string summary


}
