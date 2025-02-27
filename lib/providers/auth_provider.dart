import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../models/app_user.dart';

class AuthProvider with ChangeNotifier {
  AppUser? _user;

  AppUser? get user => _user;

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

  Future<void> googleSignIn() async {
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

  Future<void> logout() async {
    await FirebaseAuth.instance.signOut();
    _user = null;
    notifyListeners();
  }
}