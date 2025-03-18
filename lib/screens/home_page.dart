import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_current_location.dart';
import 'package:food_delivery_app/components/my_description_box.dart';
import 'package:food_delivery_app/components/my_drawer.dart';
import 'package:food_delivery_app/components/my_tab_bar.dart';
import 'package:food_delivery_app/screens/my_sliver_app.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{

  //tab controller
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      drawer: const MyDrawer(),
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled)=>[
           MySliverApp(
             title: MyTabBar(tabController: _tabController),
                child: Column(
                  children: [
                    Divider(
                      indent: 25,
                      endIndent: 25,
                        color: Theme.of(context).colorScheme.secondary
                    ),


                    //Location
                    MyCurrentLocation(),

                    //Desription
                    MyDescriptionBox()

                    //
                  ],
                ),
           )
    ], body: TabBarView(
        controller: _tabController, 
        children: [
          Text("Hello"),
          Text("Flutter")
      ],
      ),
      )
    );
  }
}
