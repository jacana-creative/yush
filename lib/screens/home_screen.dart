import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:yush/screens/activity_screen.dart';
import 'package:yush/screens/create_post_screen.dart';
import 'package:yush/screens/feed_screen.dart';
import 'package:yush/screens/profile_screen.dart';
import 'package:yush/screens/planner_screen.dart';
import 'package:yush/screens/shopping_list_screen.dart';
import 'package:provider/provider.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';

class HomeScreen extends StatefulWidget {

  static final String id = 'home_screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late AuthUser _user;

  int _currentTab = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    Amplify.Auth.getCurrentUser().then((user) {
      setState(() {
        _user = user;
      });
    }).catchError((error) {
      print((error as AuthException).message);
    });
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   onPressed: null,
      // ),
      //   floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      body: PageView(
        controller: _pageController,
        children: <Widget>[
          FeedScreen(),
          PlannerScreen(),
          CreatePostScreen(),
          ShoppingListScreen(),
          ProfileScreen(),
        ],
        onPageChanged: (int index) {
          setState(() {
            _currentTab = index;
          });
        },
      ),

      bottomNavigationBar: CurvedNavigationBar(
        index: _currentTab,
        color: Colors.lightBlueAccent,
        buttonBackgroundColor: Colors.lightBlueAccent,
        backgroundColor: Colors.white,
        height: 60.0,
        items: <Widget>[
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.calendar_today,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.add,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.assignment_outlined,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.person,
            size: 30,
            color: Colors.white,
          ),
        ],
        animationDuration: Duration(
          milliseconds: 5,
        ),
        animationCurve: Curves.bounceInOut,
        onTap: (int index) {
          setState(() {
            _currentTab = index;
          });
          _pageController.animateToPage(index,
              duration: Duration(milliseconds: 5), curve: Curves.easeIn);
        },
      ),
    );
  }
}
