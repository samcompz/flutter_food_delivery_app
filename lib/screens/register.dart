import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_button.dart';
import 'package:food_delivery_app/screens/login_page.dart';
import 'package:food_delivery_app/services/auth/auth_service.dart';
import 'package:provider/provider.dart';
import '../providers/auth_provider.dart';
import 'package:food_delivery_app/components/my_textfield.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  
  //register method
  void register() async {
    //get the auth service
    final _authService = AuthService();


    //check if passwords match -> create user
    if(passwordController.text == confirmPasswordController.text){
      //try creating user
      try{
        await _authService.signUpWithEmailPassword(emailController.text, passwordController.text,);
      }

      //display any error
      catch (e){
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
              backgroundColor: Theme.of(context).colorScheme.surface,
              title: Text(e.toString()),
            )
        );
      }
    }

    //if passwords dont match -> show error
    else{
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
            backgroundColor: Theme.of(context).colorScheme.surface,
            title: const Text("Passwords don't match"),
          )
      );
    }

    showDialog(
        context: context, 
        builder: (context) => AlertDialog(
          backgroundColor: Theme.of(context).colorScheme.surface,
          title: const Text("User wants to Register"),
        )
    );
  }

  //build
  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
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

            //password Text Field
            MyTextField(
              controller: passwordController, //capture password
              hintText: "Password",
              obscureText: true,
            ),

            const SizedBox(height: 10),

            //confirm password Text Field
            MyTextField(
              controller: confirmPasswordController, //capture password
              hintText: "confirm Password",
              obscureText: true,
            ),

            const SizedBox(height: 10),

            //Register button
            MyButton(
              text: "Register",
              onTap: register
                // sign in

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
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen())
                    );
                  },
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
