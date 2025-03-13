import 'package:flutter/material.dart'; //importmaterial class
import 'package:firebase_auth/firebase_auth.dart'; //import firebase_auth class
import 'package:google_sign_in/google_sign_in.dart'; //import google_sign_in class from the google_sign_in package
import '../models/app_user.dart'; //import loacal app_user.dart file from models package

class AuthProvider with ChangeNotifier {  //authodification provider class, notifies  any changes to the listeners
  AppUser? _user;

  AppUser? get user => _user;

//create a new user. sign up
  Future<void> signUp(String email, String password, String name) async {
    final auth = FirebaseAuth.instance;
    final userCredential = await auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    _user = AppUser(
      id: userCredential.user!.uid,
      name: name,
      email: email,
    );
    notifyListeners();
  }

//login with user provided email
  Future<void> login(String email, String password) async {
    final auth = FirebaseAuth.instance;
    final userCredential = await auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    _user = AppUser(
      id: userCredential.user!.uid,
      name: userCredential.user!.displayName ?? 'Unknown',
      email: email,
    );
    notifyListeners();
  }


final GoogleSignIn googleSignIn = GoogleSignIn(
  clientId: "1024722795033-hm7b4mcan3g427d8so2h16e2bcm8g67j.apps.googleusercontent.com",  // 🔥 Add Web Client ID here
  scopes: ['email'],
);

//login with google email
  Future<void> googleSignInMethod() async {
    final googleSignIn = GoogleSignIn();
    final googleUser = await googleSignIn.signIn();
    if (googleUser != null) {
      final googleAuth = await googleUser.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      final userCredential = await FirebaseAuth.instance.signInWithCredential(credential);
      _user = AppUser(
        id: userCredential.user!.uid,
        name: userCredential.user!.displayName ?? 'Unknown',
        email: userCredential.user!.email ?? 'Unknown',
      );
      notifyListeners();

    }
  }


//logout
  Future<void> logout() async {
    await FirebaseAuth.instance.signOut();
    _user = null;
    notifyListeners();
  }
}