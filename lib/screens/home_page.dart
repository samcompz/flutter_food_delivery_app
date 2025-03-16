import 'package:flutter/material.dart';

import '../components/my_drawer.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyHomePage ();
  }
}

class _MyHomePage extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
        drawer: MyDrawer(),
      );
  }
}

