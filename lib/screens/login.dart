import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/restaurant_list_screen.dart';
import 'package:provider/provider.dart';
import '../providers/auth_provider.dart';


class LoginScreen extends StatefulWidget{
  const LoginScreen({super.key});

  @override
    _LoginScreenState createState() => _LoginScreenState();
}


class _LoginScreenState extends State<LoginScreen> {
   
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
  

    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: emailController, // capture emmail
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: passwordController, //capture password
              decoration: const InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String email = emailController.text.trim();
                String password = passwordController.text.trim();
                authProvider.login(email, password);

                //navigate to next screen here
                Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const RestaurantListScreen()));
              },
              child: const Text('Login'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                authProvider.googleSignInMethod();
              },
              child: const Text('Sign in with Google'),
            ),
          ],
        ),
      ),
    );
  }
}