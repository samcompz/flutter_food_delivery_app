import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_button.dart';
import 'package:provider/provider.dart';
import '../providers/auth_provider.dart';
import 'package:food_delivery_app/components/my_textfield.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  //build
  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            //logo
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),

            //message , app slogan
            Text(
              "Food Delivery App",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),

            //email textField
            MyTextField(
              controller: emailController, // capture emmail
              hintText: "Email",
              obscureText: false,
            ),

            const SizedBox(
              height: 10,
            ),

            //password textfield
            MyTextField(
              controller: passwordController, //capture password
              hintText: "Password",
              obscureText: true,
            ),

            const SizedBox(height: 10),

            //confirm password textfield
            MyTextField(
              controller: confirmPasswordController, //capture password
              hintText: "confirm Password",
              obscureText: true,
            ),

            const SizedBox(height: 10),

            //Register button
            MyButton(
              text: "Register",
              onTap: () {
                // sign in
              },
            ),

            const SizedBox(height: 25),

            //already a member? Login here
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Member Already? Login Here",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
                const SizedBox(
                  width: 4,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Log In",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
