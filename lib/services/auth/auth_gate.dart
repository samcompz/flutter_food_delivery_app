import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/home_page.dart';
import 'package:food_delivery_app/services/auth/login_or_register.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapShot) {
          //user is logged in
          if (snapShot.hasData) {
            return const HomePage();
          }

          //user is NOT logged in
          else {
            return const LoginOrRegister();
          }
        },
      ),
    );
  }
}
