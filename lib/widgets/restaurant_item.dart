import 'package:flutter/material.dart';
import '../models/restaurant.dart';

class RestaurantItem extends StatelessWidget {
  final Restaurant restaurant;

  const RestaurantItem({Key? key, required this.restaurant}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: ListTile(
        leading: Image.network(restaurant.imageUrl),
        title: Text(restaurant.name),
        subtitle: Text(restaurant.address),
        onTap: () {
          // Navigate to menu screen
        },
      ),
    );
  }
}