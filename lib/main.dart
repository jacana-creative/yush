import 'package:flutter/material.dart';
import 'package:yush/screens/feed_screen.dart';
import 'package:yush/screens/home_screen.dart';
import 'package:yush/screens/signup_screen.dart';
import 'screens/login_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // Widget _getScreenId() {
  //
  // }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yush!',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      routes: {
        LoginScreen.id: (context) => LoginScreen(),
        SignupScreen.id: (context) => SignupScreen(),
        FeedScreen.id: (context) => FeedScreen(),
      },
    );
  }
}

