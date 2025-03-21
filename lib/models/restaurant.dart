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
      imagePath: "lib/images/burgers/cheese_burger.jpeg",
      price: 599.00,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(price: 99.00, name: "Extra Cheese Burger"),
        Addon(price: 199.00, name: "Bacon"),
        Addon(price: 899.00, name: "Avocado"),
        Addon(price: 299.00, name: "Egg"),
        Addon(price: 199.00, name: "Sausage"),
        Addon(price: 399.00, name: "Tomato Pasta"),
        Addon(price: 499.00, name: "meat Toast"),
      ],
    ),

    Food(
      name: "Classic Cheeseburger",
      description:
          "A juicy beef patty with melted chedder, lettuce, tomato and a hint of onion",
      imagePath: "lib/images/burgers/cheese_burger.jpeg",
      price: 499.00,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(price: 99.00, name: "Extra Cheese Burger"),
        Addon(price: 199.00, name: "Bacon"),
        Addon(price: 899.00, name: "Avocado"),
        Addon(price: 299.00, name: "Egg"),
        Addon(price: 199.00, name: "Sausage"),
        Addon(price: 399.00, name: "Tomato Pasta"),
        Addon(price: 499.00, name: "meat Toast"),
      ],
    ),

    Food(
      name: "Classic Cheeseburger",
      description:
          "A juicy beef patty with melted chedder, lettuce, tomato and a hint of onion",
      imagePath: "lib/images/burgers/cheese_burger.jpeg",
      price: 699.00,
      category: FoodCategory.burgers,  //return burgers
      availableAddons: [
        Addon(price: 99.00, name: "Extra Cheese Burger"),
        Addon(price: 199.00, name: "Bacon"),
        Addon(price: 899.00, name: "Avocado"),
        Addon(price: 299.00, name: "Egg"),
        Addon(price: 199.00, name: "Sausage"),
        Addon(price: 399.00, name: "Tomato Pasta"),
        Addon(price: 499.00, name: "meat Toast"),
      ],
    ),

    Food(
      name: "Classic Cheeseburger",
      description:
          "A juicy beef patty with melted chedder, lettuce, tomato and a hint of onion",
      imagePath: "lib/images/burgers/cheese_burger.jpeg",
      price: 599.00,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(price: 99.00, name: "Extra Cheese Burger"),
        Addon(price: 199.00, name: "Bacon"),
        Addon(price: 899.00, name: "Avocado"),
        Addon(price: 299.00, name: "Egg"),
        Addon(price: 199.00, name: "Sausage"),
        Addon(price: 399.00, name: "Tomato Pasta"),
        Addon(price: 499.00, name: "meat Toast"),
      ],
    ),

    Food(
      name: "Classic Cheeseburger",
      description:
          "A juicy beef patty with melted chedder, lettuce, tomato and a hint of onion",
      imagePath: "lib/images/burgers/cheese_burger.jpeg",
      price: 499.00,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(price: 99.00, name: "Extra Cheese Burger"),
        Addon(price: 199.00, name: "Bacon"),
        Addon(price: 899.00, name: "Avocado"),
        Addon(price: 299.00, name: "Egg"),
        Addon(price: 199.00, name: "Sausage"),
        Addon(price: 399.00, name: "Tomato Pasta"),
        Addon(price: 499.00, name: "meat Toast"),
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
        Addon(price: 99.00, name: "Extra Cheese Burger"),
        Addon(price: 199.00, name: "Bacon"),
        Addon(price: 899.00, name: "Avocado"),
        Addon(price: 299.00, name: "Egg"),
        Addon(price: 199.00, name: "Sausage"),
        Addon(price: 399.00, name: "Tomato Pasta"),
        Addon(price: 499.00, name: "meat Toast"),
      ],
    ),

    Food(
      name: "Green Salad",
      description:
          "A juicy beef patty with melted chedder, lettuce, tomato and a hint of onion",
      imagePath: "lib/images/salads/green-salad-1-580x803.jpg",
      price: 399.00,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(price: 99.00, name: "Extra Cheese Burger"),
        Addon(price: 199.00, name: "Bacon"),
        Addon(price: 899.00, name: "Avocado"),
        Addon(price: 299.00, name: "Egg"),
        Addon(price: 199.00, name: "Sausage"),
        Addon(price: 399.00, name: "Tomato Pasta"),
        Addon(price: 499.00, name: "meat Toast"),
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
        Addon(price: 99.00, name: "Extra Cheese Burger"),
        Addon(price: 199.00, name: "Bacon"),
        Addon(price: 899.00, name: "Avocado"),
        Addon(price: 299.00, name: "Egg"),
        Addon(price: 199.00, name: "Sausage"),
        Addon(price: 399.00, name: "Tomato Pasta"),
        Addon(price: 499.00, name: "meat Toast"),
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
      price: 299.00,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(price: 99.00, name: "Extra Cheese Burger"),
        Addon(price: 199.00, name: "Bacon"),
        Addon(price: 899.00, name: "Avocado"),
        Addon(price: 299.00, name: "Egg"),
        Addon(price: 199.00, name: "Sausage"),
        Addon(price: 399.00, name: "Tomato Pasta"),
        Addon(price: 499.00, name: "meat Toast"),
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
        Addon(price: 99.00, name: "Extra Cheese Burger"),
        Addon(price: 199.00, name: "Bacon"),
        Addon(price: 899.00, name: "Avocado"),
        Addon(price: 299.00, name: "Egg"),
        Addon(price: 199.00, name: "Sausage"),
        Addon(price: 399.00, name: "Tomato Pasta"),
        Addon(price: 499.00, name: "meat Toast"),
      ],
    ),

    //sides
    Food(
      name: "Pear Pie",
      description:
          "A tangy and sweet key peer pie with a rich, creamy filling and a crumbly graham cracker",
      imagePath: "lib/images/burgers/cheese_burger.jpeg",
      price: 549.00,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(price: 99.00, name: "Extra Cheese Burger"),
        Addon(price: 199.00, name: "Bacon"),
        Addon(price: 899.00, name: "Avocado"),
        Addon(price: 299.00, name: "Egg"),
        Addon(price: 199.00, name: "Sausage"),
        Addon(price: 399.00, name: "Tomato Pasta"),
        Addon(price: 499.00, name: "meat Toast"),
      ],
    ),

    Food(
      name: "Pear Pie",
      description:
          "A tangy and sweet key peer pie with a rich, creamy filling and a crumbly graham cracker",
      imagePath: "lib/images/burgers/cheese_burger.jpeg",
      price: 549.00,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(price: 99.00, name: "Extra Cheese Burger"),
        Addon(price: 199.00, name: "Bacon"),
        Addon(price: 899.00, name: "Avocado"),
        Addon(price: 299.00, name: "Egg"),
        Addon(price: 199.00, name: "Sausage"),
        Addon(price: 399.00, name: "Tomato Pasta"),
        Addon(price: 499.00, name: "meat Toast"),
      ],
    ),

    Food(
      name: "Pear Pie",
      description:
          "A tangy and sweet key peer pie with a rich, creamy filling and a crumbly graham cracker",
      imagePath: "lib/images/burgers/cheese_burger.jpeg",
      price: 549.00,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(price: 99.00, name: "Extra Cheese Burger"),
        Addon(price: 199.00, name: "Bacon"),
        Addon(price: 899.00, name: "Avocado"),
        Addon(price: 299.00, name: "Egg"),
        Addon(price: 199.00, name: "Sausage"),
        Addon(price: 399.00, name: "Tomato Pasta"),
        Addon(price: 499.00, name: "meat Toast"),
      ],
    ),

    Food(
      name: "Pear Pie",
      description:
          "A tangy and sweet key peer pie with a rich, creamy filling and a crumbly graham cracker",
      imagePath: "lib/images/burgers/cheese_burger.jpeg",
      price: 549.00,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(price: 99.00, name: "Extra Cheese Burger"),
        Addon(price: 199.00, name: "Bacon"),
        Addon(price: 899.00, name: "Avocado"),
        Addon(price: 299.00, name: "Egg"),
        Addon(price: 199.00, name: "Sausage"),
        Addon(price: 399.00, name: "Tomato Pasta"),
        Addon(price: 499.00, name: "meat Toast"),
      ],
    ),

    Food(
      name: "Pear Pie",
      description:
          "A tangy and sweet key peer pie with a rich, creamy filling and a crumbly graham cracker",
      imagePath: "lib/images/burgers/cheese_burger.jpeg",
      price: 549.00,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(price: 99.00, name: "Extra Cheese Burger"),
        Addon(price: 199.00, name: "Bacon"),
        Addon(price: 899.00, name: "Avocado"),
        Addon(price: 299.00, name: "Egg"),
        Addon(price: 199.00, name: "Sausage"),
        Addon(price: 399.00, name: "Tomato Pasta"),
        Addon(price: 499.00, name: "meat Toast"),
      ],
    ),

    //deserts
    Food(
      name: "Red Velvet Lava Cake",
      description:
          "A juicy beef patty with melted chedder, lettuce, tomato and a hint of onion",
      imagePath: "lib/images/desserts/red-velvet-lava-cake.png",
      price: 990.00,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(price: 99.00, name: "Extra Cheese Burger"),
        Addon(price: 199.00, name: "Bacon"),
        Addon(price: 899.00, name: "Avocado"),
        Addon(price: 299.00, name: "Egg"),
        Addon(price: 199.00, name: "Sausage"),
        Addon(price: 399.00, name: "Tomato Pasta"),
        Addon(price: 499.00, name: "meat Toast"),
      ],
    ),

    Food(
      name: "Peanut Butter Pie with Chocolate",
      description:
          "A juicy beef patty with melted chedder, lettuce, tomato and a hint of onion",
      imagePath: "lib/images/desserts/PeanutButterPretzelPiewithChocolate.png",
      price: 999.00,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(price: 99.00, name: "Extra Cheese Burger"),
        Addon(price: 199.00, name: "Bacon"),
        Addon(price: 899.00, name: "Avocado"),
        Addon(price: 299.00, name: "Egg"),
        Addon(price: 199.00, name: "Sausage"),
        Addon(price: 399.00, name: "Tomato Pasta"),
        Addon(price: 499.00, name: "meat Toast"),
      ],
    ),

    Food(
      name: "Chocolate Ice Cream Milk Frozen Dessert",
      description: "Where chocolate dreams melt in your mouth!n",
      imagePath:
          "lib/images/desserts/chocolate-ice-cream-milk-frozen-dessert.png",
      price: 1499.00,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(price: 99.00, name: "Extra Cheese Burger"),
        Addon(price: 199.00, name: "Bacon"),
        Addon(price: 899.00, name: "Avocado"),
        Addon(price: 299.00, name: "Egg"),
        Addon(price: 199.00, name: "Sausage"),
        Addon(price: 399.00, name: "Tomato Pasta"),
        Addon(price: 499.00, name: "meat Toast"),
      ],
    ),

    Food(
      name: "Lemon Pudding Dessert",
      description: "A soft and tangy lemon pudding topped with whipped cream.",
      imagePath: "lib/images/desserts/Lemon-Pudding.png",
      price: 899.00,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(price: 99.00, name: "Extra Whipped Cream"),
        Addon(price: 199.00, name: "Chocolate Syrup"),
        Addon(price: 299.00, name: "Caramel Drizzle"),
        Addon(price: 199.00, name: "Nuts"),
        Addon(price: 399.00, name: "Berry Compote"),
        Addon(price: 499.00, name: "Vanilla Ice Cream"),
      ],
    ),

    Food(
      name: "Eggless Butter Cookies",
      description: "Crispy, buttery cookies made without eggs, perfect with tea or coffee.",
      imagePath: "lib/images/desserts/Eggless-Easy-Butter-Cookies.png",
      price: 849.00,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(price: 99.00, name: "Chocolate Chips"),
        Addon(price: 199.00, name: "Almond Slices"),
        Addon(price: 299.00, name: "Vanilla Essence"),
        Addon(price: 399.00, name: "Cinnamon Powder"),
        Addon(price: 499.00, name: "Caramel Drizzle"),
      ],
    ),

    //drinks
    Food(
      name: "500ml PET Soda",
      description: "A 500ML bottle of Coke, Sprite, or Fanta. Served chilled.",
      imagePath: "lib/images/drinks/500ml_Coke-PET-800x800.png",
      price: 349.00,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(price: 49.00, name: "Extra Ice"),
        Addon(price: 99.00, name: "Lemon Slice"),
        Addon(price: 149.00, name: "Mint Leaves"),
        Addon(price: 199.00, name: "Flavored Syrup"),
      ],
    ),

    Food(
      name: "500ml Water",
      description: "Half a liter of pure drinking water - Dasani. Served cold.",
      imagePath: "lib/images/drinks/coca-cola-water-dasani.png",
      price: 149.00,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(price: 49.00, name: "Extra Ice"),
        Addon(price: 99.00, name: "Lemon Slice"),
        Addon(price: 149.00, name: "Mint Leaves"),
      ],
    ),

    Food(
      name: "Minute Maid Drink",
      description: "Refreshing Minute Maid fruit juice. Choose from Orange, Apple, or Mango.",
      imagePath: "lib/images/drinks/minute-maid-drink-by-pizza-inn-800x800.png",
      price: 249.00,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(price: 49.00, name: "Extra Ice"),
        Addon(price: 99.00, name: "Lemon Slice"),
        Addon(price: 149.00, name: "Mint Leaves"),
        Addon(price: 199.00, name: "Honey Drizzle"),
      ],
    ),

    Food(
      name: "Coke Zero",
      description: "The same refreshing Coca-Cola taste with zero sugar. Served chilled.",
      imagePath: "lib/images/drinks/Coke-Zero-500ml.png",
      price: 399.00,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(price: 49.00, name: "Extra Ice"),
        Addon(price: 99.00, name: "Lemon Slice"),
        Addon(price: 149.00, name: "Mint Leaves"),
      ],
    ),


    Food(
      name: "Coke 2L",
      description: "A large 2-liter bottle of Coca-Cola, perfect for sharing. Served chilled.",
      imagePath: "lib/images/drinks/Coke-2L-800x800.png",
      price: 499.00,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(price: 49.00, name: "Extra Ice"),
        Addon(price: 99.00, name: "Lemon Slice"),
        Addon(price: 149.00, name: "Mint Leaves"),
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
  final List<CartItem> _cart = [];  //_cart is a list storing cart items.

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
    int cartIndex = _cart.indexOf(cartItem);  //Find the Item in the Cart, indexOf() == finds the index of the cartItem in _cart.
    if (cartIndex != -1) {                    //If the item exists, it returns its index.,,, If the item does not exist, it returns -1
      if (_cart[cartIndex].quantity > 1) {    //If quantity is greater than 1,
        _cart[cartIndex].quantity--;          //If quantity is 1:
      } else {
        _cart.removeAt(cartIndex);            //If quantity is 1: Remove item completely
      }
    }                                         //If cartIndex == -1, the item is not in the cart, so we do nothing.
    notifyListeners();                        //method use in flutter's Provider package, It tells the UI to rebuild and reflect changes in the cart.
  }

//get total price of cart
  double getTotalPrice() {
    double total = 0.0;                               //Creates a total variable to store the final cart total.

    for (CartItem cartItem in _cart) {               //Iterates over all items in _cart (a list of CartItem objects).
      double itemTotal = cartItem.food.price;        //Extracts the base price of the food item.
      for (Addon addon in cartItem.selectedAddons) {  //selectedAddons is a list of Addon objects
        itemTotal += addon.price;                     //Adds the price of each add-on to itemTotal
      }
      total += itemTotal * cartItem.quantity;         //Multiplies itemTotal by the quantity of that cart item/Adds this total to the overall total price
    }
    return total;                                     //Returns the final total price of all cart items.
  }

//get total number of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;                            ///Creates a variable totalItemCount to store the sum of all item quantities in the cart.

    for (CartItem cartItem in _cart) {                 ///Iterates over all items in _cart (a list of CartItem objects).
      totalItemCount += cartItem.quantity;             ///Extracts the quantity of each cartItem and adds it to totalItemCount.
    }

    return totalItemCount;                             ///Returns the total number of individual items in the cart.
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
