import 'package:a/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fluttertoast/fluttertoast.dart';
class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  // Login Function
Future<UserCredential> Login(String email, String password){
  return _auth.signInWithEmailAndPassword(email: email.trim(), password: password.trim());
}
Future<UserCredential> Signup(String email, String password){
  return _auth.createUserWithEmailAndPassword(email: email.trim(), password: password.trim());
}
Future<void> Signout() {
  return _auth.signOut();
}
  User? get currentUser => _auth.currentUser;
}