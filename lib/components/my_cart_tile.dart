import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_quantity_selector.dart';
import 'package:food_delivery_app/models/cart_item.dart';
import 'package:provider/provider.dart';

import '../models/restaurant.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;

  const MyCartTile({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      /*Listens for changes in the Restaurant provider and rebuilds the widget whenever the restaurant data changes.*/
      builder: (context, restaurant, child) => Container(
        //Passes the restaurant object to the builder function.
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(8),
        ),
        // margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        child: Column(
          //Holds all the content of the cart item, including the image, name, price, and quantity selector.
          children: [
            Padding(
              //The Padding adds spacing inside the container.
              padding: const EdgeInsets.all(2.0),

              child: Row(
                //The Row arranges the food image, name/price, and quantity selector horizontally.
                children: [
                  //food image
                  ClipRRect(
                    //Displays the food image with rounded corners.
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      cartItem.food.imagePath,
                      //image is loaded from the asset path stored in cartItem.food.imagePath.
                      height: 80,
                      width: 80,
                    ),
                  ),

                  //name and price section inside expanded to take available space
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //displays the food name
                        Text(
                          cartItem.food.name,
                          style: const TextStyle(fontSize: 14),
                          maxLines: 2, //allows wrapping,
                          // overflow: TextOverflow.ellipsis,
                        ),

                        //displays the food price, formatted as KShs. 99.99
                        Text('KShs. ${cartItem.food.price}',
                          style: const TextStyle(fontSize: 12,
                          overflow: TextOverflow.ellipsis),
                        )
                      ],
                    ),
                  ),

                  const Spacer(), // pushes the selector to the right

                  //increment or decrement quantity using Quantity selector widget
                  QuantitySelector(
                    quantity: cartItem.quantity,
                    food: cartItem.food,
                    onDecrement: () {
                      restaurant.removeFromCart(cartItem);
                    },
                    onIncrement: () {
                      restaurant.addToCart(
                          cartItem.food, cartItem.selectedAddons,
                          quantity: cartItem.quantity);
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
