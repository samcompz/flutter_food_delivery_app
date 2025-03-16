import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/logIn.dart';
import 'package:food_delivery_app/screens/register.dart';

class LoginOrRegister extends StatefulWidget{

  @override
  State<LoginOrRegister> createState() {
    // TODO: implement createState
    return _LoginOrRegisterState();
  }
}

class _LoginOrRegisterState extends State<LoginOrRegister>{

  //initially, show login page
  bool showLoginPage = true;


  //toggle between login and register page
  void togglePages(){
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if(showLoginPage){
      return LoginScreen();
    }else{
      return RegisterScreen();
    }
  }
}