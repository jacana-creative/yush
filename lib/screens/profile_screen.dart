import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yush/screens/edit_profile_screen.dart';
import 'package:yush/screens/notifications_screen.dart';
import 'package:yush/screens/settings_screen.dart';
import 'package:yush/tabs/user_meal_plans_tab.dart';
import 'package:yush/tabs/user_recipes_tab.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _selectedIndex = 0;
  List<Widget> _plans = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          actionsIconTheme: IconThemeData(color: Colors.black),
          actions: [
            IconButton(
              icon: Icon(FontAwesomeIcons.heart),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NotificationsScreen(),
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SettingsScreen(),
                ),
              ),
            )
          ],
          title: Center(
            child: Text(
              'alphasin',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 30.0, 10.0, 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      child: CircleAvatar(
                        radius: 50.0,
                        backgroundImage: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTowV0YdzOlp5iXoAiR769dC8I1duXXw3pPQ&usqp=CAU"),
                      ),
                    ),
                    const SizedBox(
                      width: 8.0,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            '0',
                            style: TextStyle(),
                          ),
                          Flexible(
                            child: Text(
                              'Recipes',
                              style: TextStyle(),
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            '0',
                            style: TextStyle(),
                          ),
                          Flexible(
                            child: Text(
                              'Followers',
                              style: TextStyle(),
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            '0',
                            style: TextStyle(),
                          ),
                          Flexible(
                            child: Text(
                              'Following',
                              style: TextStyle(),
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Aayush Singla',
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    Text('Alpha Beta gamma'),
                    SizedBox(height: 8.0,),
                    Center(
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          minimumSize: Size(300.0, 40.0),
                          backgroundColor: Colors.grey[300],
                        ),
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EditProfileScreen(),
                          ),
                        ),
                        child: Text('Edit Profile', style: TextStyle(color:
                        Colors.grey[600]),),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              DefaultTabController(
                
                length: 2,
                child: Column(
                  children: [
                    Container(
                      child: TabBar(
                        indicatorColor: Colors.green,
                        indicatorSize: TabBarIndicatorSize.label,
                        tabs: [
                          Tab(
                            child: Container(
                              decoration: BoxDecoration(),
                              child: Align(
                                alignment: Alignment.center,
                                child: Column(
                                  children: [
                                    Text('4', style: TextStyle(color: Colors
                                        .black),),
                                    Text(
                                      'Meal Plans',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              decoration: BoxDecoration(),
                              child: Align(
                                alignment: Alignment.center,
                                child: Column(
                                  children: [
                                    Text('3', style: TextStyle(color: Colors
                                            .black),),
                                    Text(
                                      'Recipes',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height,
                      child: TabBarView(children: [
                       UserMealPlansTab(),
                        UserRecipesTab(),
                      ]),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
