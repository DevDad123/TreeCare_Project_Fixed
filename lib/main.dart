import 'package:a/HomeScreen.dart';
import 'package:a/Login.dart';
import 'package:a/Signin.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:a/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthGate(),
    );
  }
}
class AuthGate extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    final user = FirebaseAuth.instance.currentUser;
    if(user != null){
      return Homescreen();
    }
    else {
      return login();
    }
  }
}