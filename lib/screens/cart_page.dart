import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/restaurant.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Consumer<Restaurant>(builder: (context, restaurant, child) {
      //cart
      final userCart = restaurant.cart;

      //scaffold
      return Scaffold(
        appBar: AppBar(
          title: const Text("Cart"),
          backgroundColor: Colors.transparent,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: userCart.length,
                  itemBuilder: (context, index) {
                    //GET INDIVIDUAL CART ITEM
                    final cartItem = userCart[index];

                    //return cart tile UI
                    return ListTile(
                      title: Text(cartItem.food.name),
                    );
                  }),
            )
          ],
        ),
      );
    });
  }
}
