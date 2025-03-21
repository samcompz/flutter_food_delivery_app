//food model
class Food {
  final String name;          //name of the food
  final String description;   //description of the food
  final String imagePath;     // an image of the food
  final double price;         //the price of the food
  final FoodCategory category; //category under which the food falls in
  List<Addon> availableAddons; //the available addons


  //constructor
  Food({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.category,
    required this.availableAddons,
  });
}

//food categories
enum FoodCategory { burgers, salads, sides, desserts, drinks }

//food addons
class Addon {
  String name;
  double price;

  Addon({required this.price, required this.name});
}
