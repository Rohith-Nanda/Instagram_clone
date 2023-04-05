import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/responsive/mobilescreenlayout.dart';
import 'package:instagram_clone/responsive/responsivescreen.dart';
import 'package:instagram_clone/responsive/webscreenlayout.dart';
import 'package:instagram_clone/screens/loginscreen.dart';
import 'package:instagram_clone/screens/signupscreen.dart';
import 'package:instagram_clone/utils/colors.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor
      ),
      home: SignupScreen()
    );
  }
}