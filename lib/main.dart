
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:yush/models/shopping_data.dart';
import 'package:yush/screens/confirm.dart';
import 'package:yush/screens/entry.dart';
import 'package:yush/screens/feed_screen.dart';
import 'package:yush/screens/home_screen.dart';
import 'package:yush/screens/signup_screen.dart';
import 'screens/login_screen.dart';
import 'package:provider/provider.dart';


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
    return ChangeNotifierProvider(
      create: (context) => new TaskData(),
      child: MaterialApp(
        title: 'Yush!',
        theme: ThemeData(
          primarySwatch: Colors.lightBlue,
        ),
        debugShowCheckedModeBanner: false,
        // home: EntryScreen(),
        onGenerateRoute: (settings) {
          if (settings.name == '/confirm') {
            return PageRouteBuilder(pageBuilder: (_,__,___) => ConfirmScreen
              (data: settings.arguments as LoginData),
              transitionsBuilder: (_, __, ___, child) => child,
            );
          }

          if (settings.name == '/home_screen') {
            return PageRouteBuilder(pageBuilder: (_,__,___) => HomeScreen(),
              transitionsBuilder: (_, __, ___, child) => child,
            );
          }
          return MaterialPageRoute(builder: (_) => EntryScreen());
        },
        routes: {
          LoginScreen.id: (context) => LoginScreen(),
          SignupScreen.id: (context) => SignupScreen(),
          FeedScreen.id: (context) => FeedScreen(),
        },
      ),
    );
  }
}

