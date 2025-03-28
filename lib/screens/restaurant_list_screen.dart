// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../providers/restaurant_provider.dart';
// import '../widgets/restaurant_item.dart';
//
// class RestaurantListScreen extends StatefulWidget {
//   const RestaurantListScreen({super.key});
//
//   @override
//   _RestaurantListScreenState createState() => _RestaurantListScreenState();
// }
//
// class _RestaurantListScreenState extends State<RestaurantListScreen> {
//   @override
//   void initState() {
//     super.initState();
//
//     // Fetch restaurants when the screen is created
//     Future.microtask(() =>
//         Provider.of<RestaurantProvider>(context, listen: false).fetchRestaurants());
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final restaurantProvider = Provider.of<RestaurantProvider>(context);
//     final restaurants = restaurantProvider.restaurants;
//
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Restaurants'),
//       ),
//       body: restaurants.isEmpty
//           ? const Center(child: Text('No restaurants available'))
//           : ListView.builder(
//         itemCount: restaurants.length,
//         itemBuilder: (context, index) {
//           final restaurant = restaurants[index];
//           return RestaurantItem(restaurant: restaurant);
//         },
//       ),
//     );
//   }
// }
