import 'package:flutter/material.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});

  void openLocationSearchBox(BuildContext context){
    showDialog(
      context: context, 
      builder: (context) =>const  AlertDialog(
        title:  Text("Your Location"),
        content: TextField(
          decoration: const InputDecoration(hintText: "search address"),
        ),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Deliver Now",
          style: TextStyle(color: Theme.of(context).colorScheme.primary),),
      
          GestureDetector(
            onTap: ()=>openLocationSearchBox(context),
            child: Row(
              children: [
                //address
                Text("6901 Mombasa Kenya", 
                style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary,
                fontWeight: FontWeight.bold),),
                  
                //dropdown menu
                Icon(Icons.keyboard_arrow_down_rounded),
              ],
            ),
          )
        ],
      ),
    );
  }
}