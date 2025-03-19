import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_current_location.dart';
import 'package:food_delivery_app/components/my_description_box.dart';
import 'package:food_delivery_app/components/my_drawer.dart';
import 'package:food_delivery_app/components/my_food_tile.dart';
import 'package:food_delivery_app/components/my_tab_bar.dart';
import 'package:food_delivery_app/models/food.dart';
import 'package:food_delivery_app/models/restaurant.dart';
import 'package:food_delivery_app/screens/my_sliver_app.dart';
import 'package:provider/provider.dart';

import 'food_page.dart';

class HomePage extends StatefulWidget  {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  //tab controller
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: FoodCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  //sort out and return a list of food items that belong to a specific category
  List<Food> _filterMenuByCategory(FoodCategory category, List<Food> fullMenu) {
    return fullMenu.where((food) => food.category == category).toList();
  }

  // return list of foods in given category
  List<Widget> getFoodInThisCategory(List<Food> fullMenu) {
    return FoodCategory.values.map((category) {
      //GET CATEGORY MENU
      // List<Food> fullMenu = {};
      List<Food> categoryMenu = _filterMenuByCategory(category, fullMenu);

      return ListView.builder(
        itemCount: categoryMenu.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          //get individual food
          final food = categoryMenu[index];

          //return food tile UI
          return FoodTile(
              food: food,
              onTap: ()=> Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context)=>FoodPage(food:food),
                )
              )
          );
        },
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const MyDrawer(),
        body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) =>
            [
              MySliverApp(
                title: MyTabBar(tabController: _tabController),
                child: Column(
                  children: [
                    Divider(
                        indent: 25,
                        endIndent: 25,
                        color: Theme
                            .of(context)
                            .colorScheme
                            .secondary
                    ),

                    //Location
                    const MyCurrentLocation(),

                    //Description
                    const MyDescriptionBox()
                  ],
                ),
              )
            ], body: Consumer<Restaurant>(
          builder: (context, restaurant, child) =>
              TabBarView(
                  controller: _tabController,
                  children: getFoodInThisCategory(restaurant.menu)
              ),
        )
        )
    );
  }
}
