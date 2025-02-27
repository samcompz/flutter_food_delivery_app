import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/restaurant.dart';

class RestaurantProvider with ChangeNotifier {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  List<Restaurant> _restaurants = [];

  List<Restaurant> get restaurants => _restaurants;

  Future<void> fetchRestaurants() async {
    final snapshot = await _firestore.collection('restaurants').get();
    _restaurants = snapshot.docs.map((doc) => Restaurant.fromJson(doc.data())).toList();
    notifyListeners();
  }
}