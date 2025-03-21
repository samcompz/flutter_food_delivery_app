import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/food.dart';
import 'package:intl/intl.dart';

import 'cart_item.dart';

// be yourself do yourself
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
        Addon(price: 0.99, name: "Extra Cheese Burger "),
        Addon(price: 1.99, name: "Bacon"),
        Addon(price: 8.99, name: "Avocado"),
        Addon(price: 2.99, name: "Egg"),
        Addon(price: 1.99, name: "Sausage"),
        Addon(price: 3.99, name: "Tomato Pasta"),
        Addon(price: 4.99, name: "meat Toast"),
      ],
    ),

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
      ],
    ),

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
      ],
    ),

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
      ],
    ),

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
      ],
    ),

    //salads
    Food(
      name: "Grilled Chicken Salad",
      description:
          "This ultimate grilled chicken salad is piled high with all the best ingredients, "
          "each one adding to it’s well balanced fusion of flavors and satisfying "
          "variety of textures.r",
      imagePath: "lib/images/salads/grilled-chicken-salad.jpg",
      price: 500.00,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(price: 0.99, name: "Extra Cheese Burger"),
        Addon(price: 1.99, name: "Bacon"),
        Addon(price: 8.99, name: "Avocado"),
        Addon(price: 2.99, name: "Egg"),
        Addon(price: 1.99, name: "Sausage"),
        Addon(price: 3.99, name: "Tomato Pasta"),
        Addon(price: 4.99, name: "meat Toast"),
      ],
    ),

    Food(
      name: "Green Salad",
      description:
          "A juicy beef patty with melted chedder, lettuce, tomato and a hint of onion",
      imagePath: "lib/images/salads/green-salad-1-580x803.jpg",
      price: 0.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(price: 0.99, name: "Extra Cheese Burger"),
        Addon(price: 1.99, name: "Bacon"),
        Addon(price: 8.99, name: "Avocado"),
        Addon(price: 2.99, name: "Egg"),
        Addon(price: 1.99, name: "Sausage"),
        Addon(price: 3.99, name: "Tomato Pasta"),
        Addon(price: 4.99, name: "meat Toast"),
      ],
    ),

    Food(
      name: "Pasta Salad",
      description:
          "A tasty pasta with Cherry tomatoes, cucumbers, chickpeas, arugula and pine nuts. Enjoy!!",
      imagePath: "lib/images/salads/pasta-salad-580x848.jpg",
      price: 189.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(price: 0.99, name: "Extra Cheese Burger"),
        Addon(price: 1.99, name: "Bacon"),
        Addon(price: 8.99, name: "Avocado"),
        Addon(price: 2.99, name: "Egg"),
        Addon(price: 1.99, name: "Sausage"),
        Addon(price: 3.99, name: "Tomato Pasta"),
        Addon(price: 4.99, name: "meat Toast"),
      ],
    ),

    Food(
      name: "Spinach Strawberry Salad",
      description:
          "Say hello to COLOR, Spinach Strawberry Salad with Balsamic Poppy "
          "Seed Dressing style! Whether you need a healthy lunch or are looking "
          "for a salad to bring to a party that—this is critical—people actually want to eat, "
          "this strawberry spinach salad with poppy seed dressing and feta is the recipe for you!",
      imagePath: "lib/images/salads/Spinach-Strawberry-Salad.jpg",
      price: 0.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(price: 0.99, name: "Extra Cheese Burger"),
        Addon(price: 1.99, name: "Bacon"),
        Addon(price: 8.99, name: "Avocado"),
        Addon(price: 2.99, name: "Egg"),
        Addon(price: 1.99, name: "Sausage"),
        Addon(price: 3.99, name: "Tomato Pasta"),
        Addon(price: 4.99, name: "meat Toast"),
      ],
    ),

    Food(
      name: "Big Mac Salad Cheese Burger",
      description: "Tastes like a Big Mac in salad form – "
          "This dish combines the best vibes of the classic cheeseburger "
          "with the crisp freshness of a salad. ",
      imagePath: "lib/images/salads/big-Mac-Salad-Cheeseburger-Salad.jpg",
      price: 650.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(price: 0.99, name: "Extra Cheese Burger"),
        Addon(price: 1.99, name: "Bacon"),
        Addon(price: 8.99, name: "Avocado"),
        Addon(price: 2.99, name: "Egg"),
        Addon(price: 1.99, name: "Sausage"),
        Addon(price: 3.99, name: "Tomato Pasta"),
        Addon(price: 4.99, name: "meat Toast"),
      ],
    ),

    //sides
    Food(
      name: "Pear Pie",
      description:
          "A tangy and sweet key peer pie with a rich, creamy filling and a crumbly graham cracker",
      imagePath: "lib/images/cheese_burger.jpeg",
      price: 5.49,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(price: 0.99, name: "Extra Cheese Burger"),
        Addon(price: 1.99, name: "Bacon"),
        Addon(price: 8.99, name: "Avocado"),
        Addon(price: 2.99, name: "Egg"),
        Addon(price: 1.99, name: "Sausage"),
        Addon(price: 3.99, name: "Tomato Pasta"),
        Addon(price: 4.99, name: "meat Toast"),
      ],
    ),

    Food(
      name: "Pear Pie",
      description:
          "A tangy and sweet key peer pie with a rich, creamy filling and a crumbly graham cracker",
      imagePath: "lib/images/cheese_burger.jpeg",
      price: 5.49,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(price: 0.99, name: "Extra Cheese Burger"),
        Addon(price: 1.99, name: "Bacon"),
        Addon(price: 8.99, name: "Avocado"),
        Addon(price: 2.99, name: "Egg"),
        Addon(price: 1.99, name: "Sausage"),
        Addon(price: 3.99, name: "Tomato Pasta"),
        Addon(price: 4.99, name: "meat Toast"),
      ],
    ),

    Food(
      name: "Pear Pie",
      description:
          "A tangy and sweet key peer pie with a rich, creamy filling and a crumbly graham cracker",
      imagePath: "lib/images/cheese_burger.jpeg",
      price: 5.49,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(price: 0.99, name: "Extra Cheese Burger"),
        Addon(price: 1.99, name: "Bacon"),
        Addon(price: 8.99, name: "Avocado"),
        Addon(price: 2.99, name: "Egg"),
        Addon(price: 1.99, name: "Sausage"),
        Addon(price: 3.99, name: "Tomato Pasta"),
        Addon(price: 4.99, name: "meat Toast"),
      ],
    ),

    Food(
      name: "Pear Pie",
      description:
          "A tangy and sweet key peer pie with a rich, creamy filling and a crumbly graham cracker",
      imagePath: "lib/images/cheese_burger.jpeg",
      price: 5.49,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(price: 0.99, name: "Extra Cheese Burger"),
        Addon(price: 1.99, name: "Bacon"),
        Addon(price: 8.99, name: "Avocado"),
        Addon(price: 2.99, name: "Egg"),
        Addon(price: 1.99, name: "Sausage"),
        Addon(price: 3.99, name: "Tomato Pasta"),
        Addon(price: 4.99, name: "meat Toast"),
      ],
    ),

    Food(
      name: "Pear Pie",
      description:
          "A tangy and sweet key peer pie with a rich, creamy filling and a crumbly graham cracker",
      imagePath: "lib/images/cheese_burger.jpeg",
      price: 5.49,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(price: 0.99, name: "Extra Cheese Burger"),
        Addon(price: 1.99, name: "Bacon"),
        Addon(price: 8.99, name: "Avocado"),
        Addon(price: 2.99, name: "Egg"),
        Addon(price: 1.99, name: "Sausage"),
        Addon(price: 3.99, name: "Tomato Pasta"),
        Addon(price: 4.99, name: "meat Toast"),
      ],
    ),

    //deserts
    Food(
      name: "Red Velvet Lava Cake",
      description:
          "A juicy beef patty with melted chedder, lettuce, tomato and a hint of onion",
      imagePath: "lib/images/desserts/red-velvet-lava-cake.png",
      price: 0.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(price: 0.99, name: "Extra Cheese Burger"),
        Addon(price: 1.99, name: "Bacon"),
        Addon(price: 8.99, name: "Avocado"),
        Addon(price: 2.99, name: "Egg"),
        Addon(price: 1.99, name: "Sausage"),
        Addon(price: 3.99, name: "Tomato Pasta"),
        Addon(price: 4.99, name: "meat Toast"),
      ],
    ),

    Food(
      name: "Peanut Butter Pie with Chocolate",
      description:
          "A juicy beef patty with melted chedder, lettuce, tomato and a hint of onion",
      imagePath: "lib/images/desserts/PeanutButterPretzelPiewithChocolate.png",
      price: 1000.00,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(price: 0.99, name: "Extra Cheese Burger"),
        Addon(price: 1.99, name: "Bacon"),
        Addon(price: 8.99, name: "Avocado"),
        Addon(price: 2.99, name: "Egg"),
        Addon(price: 1.99, name: "Sausage"),
        Addon(price: 3.99, name: "Tomato Pasta"),
        Addon(price: 4.99, name: "meat Toast"),
      ],
    ),

    Food(
      name: "Chocolate Ice Cream Milk Frozen Dessert",
      description: "Where chocolate dreams melt in your mouth!n",
      imagePath:
          "lib/images/desserts/chocolate-ice-cream-milk-frozen-dessert.png",
      price: 1500.00,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(price: 0.99, name: "Extra Cheese Burger"),
        Addon(price: 1.99, name: "Bacon"),
        Addon(price: 8.99, name: "Avocado"),
        Addon(price: 2.99, name: "Egg"),
        Addon(price: 1.99, name: "Sausage"),
        Addon(price: 3.99, name: "Tomato Pasta"),
        Addon(price: 4.99, name: "meat Toast"),
      ],
    ),

    Food(
      name: "Lemon Pudding Dessert",
      description:
          "A juicy beef patty with melted chedder, lettuce, tomato and a hint of onion",
      imagePath: "lib/images/desserts/Lemon-Pudding.png",
      price: 0.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(price: 0.99, name: "Extra Cheese Burger"),
        Addon(price: 1.99, name: "Bacon"),
        Addon(price: 8.99, name: "Avocado"),
        Addon(price: 2.99, name: "Egg"),
        Addon(price: 1.99, name: "Sausage"),
        Addon(price: 3.99, name: "Tomato Pasta"),
        Addon(price: 4.99, name: "meat Toast"),
      ],
    ),

    Food(
      name: "Egg less Butter Cookies",
      description:
          "A juicy beef patty with melted chedder, lettuce, tomato and a hint of onion",
      imagePath: "lib/images/desserts/Eggless-Easy-Butter-Cookies.png",
      price: 850.00,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(price: 0.99, name: "Extra Cheese Burger"),
        Addon(price: 1.99, name: "Bacon"),
        Addon(price: 8.99, name: "Avocado"),
        Addon(price: 2.99, name: "Egg"),
        Addon(price: 1.99, name: "Sausage"),
        Addon(price: 3.99, name: "Tomato Pasta"),
        Addon(price: 4.99, name: "meat Toast"),
      ],
    ),

    //drinks
    Food(
      name: "500ml PET",
      description: "A 500ML Bottle of Coke, Sprite, or Fanta. Served Cold.",
      imagePath: "lib/images/drinks/500ml_Coke-PET-800x800.png",
      price: 350.00,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(price: 0.99, name: "Extra Cheese Burger"),
        Addon(price: 1.99, name: "Bacon"),
        Addon(price: 8.99, name: "Avocado"),
        Addon(price: 2.99, name: "Egg"),
        Addon(price: 1.99, name: "Sausage"),
        Addon(price: 3.99, name: "Tomato Pasta"),
        Addon(price: 4.99, name: "meat Toast"),
      ],
    ),

    Food(
      name: "500ml Water",
      description: "Half Litre of pure drinking Water - Dasani. served Cold",
      imagePath: "lib/images/drinks/coca-cola-water-dasani.png",
      price: 150.00,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(price: 0.99, name: "Extra Cheese Burger"),
        Addon(price: 1.99, name: "Bacon"),
        Addon(price: 8.99, name: "Avocado"),
        Addon(price: 2.99, name: "Egg"),
        Addon(price: 1.99, name: "Sausage"),
        Addon(price: 3.99, name: "Tomato Pasta"),
        Addon(price: 4.99, name: "meat Toast"),
      ],
    ),

    Food(
      name: "Minute Maid Drink",
      description: "Minute Maid by PizzaInn. Fruit juice of choice.",
      imagePath: "lib/images/drinks/minute-maid-drink-by-pizza-inn-800x800.png",
      price: 150.00,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(price: 0.99, name: "Extra Cheese Burger"),
        Addon(price: 1.99, name: "Bacon"),
        Addon(price: 8.99, name: "Avocado"),
        Addon(price: 2.99, name: "Egg"),
        Addon(price: 1.99, name: "Sausage"),
        Addon(price: 3.99, name: "Tomato Pasta"),
        Addon(price: 4.99, name: "meat Toast"),
      ],
    ),

    Food(
      name: "Coke Zero",
      description: "Enjoy the refreshment of Coca‑Cola with zero sugar.",
      imagePath: "lib/images/drinks/Coke-Zero-500ml.png",
      price: 250.00,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(price: 0.99, name: "Extra Cheese Burger"),
        Addon(price: 1.99, name: "Bacon"),
        Addon(price: 8.99, name: "Avocado"),
        Addon(price: 2.99, name: "Egg"),
        Addon(price: 1.99, name: "Sausage"),
        Addon(price: 3.99, name: "Tomato Pasta"),
        Addon(price: 4.99, name: "meat Toast"),
      ],
    ),

    Food(
      name: "Coke 2L",
      description:
          "Whether it’s a Party-size Coca-Cola bottle, a perfectly sized mini, "
          "an ice-cold Diet Coke, or a crisp Coca-Cola Zero Sugar can, "
          "there's always a refreshing way to enjoy your favorite drink.",
      imagePath: "lib/images/cheese_burger.jpeg",
      price: 500.00,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(price: 0.99, name: "Extra Cheese Burger"),
        Addon(price: 1.99, name: "Bacon"),
        Addon(price: 8.99, name: "Avocado"),
        Addon(price: 2.99, name: "Egg"),
        Addon(price: 1.99, name: "Sausage"),
        Addon(price: 3.99, name: "Tomato Pasta"),
        Addon(price: 4.99, name: "meat Toast"),
      ],
    ),
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
    //see if there is a cart item already with the same food and addons
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
      _cart.add(
        CartItem(
            food: food,
            selectedAddons: selectedAddons,
            quantity: cartItem!.quantity),
      );
    }
    notifyListeners();
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
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt");
    receipt.writeln();

    //format date to include up to seconds only
    String formattedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("=====================");

    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}) ");
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt
            .writeln("   Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
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
  String _formatPrice(double price) {
    return "KShs. ${price.toStringAsFixed(2)}";
  }

//format list of addons into a string summary
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(", ");
  }
}
