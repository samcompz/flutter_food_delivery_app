import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/login_page.dart';
import 'package:food_delivery_app/screens/register.dart';

class LoginOrRegister extends StatefulWidget{
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() {
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
      return const LoginScreen();
    }else{
      return RegisterScreen();
    }
  }
}