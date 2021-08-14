import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yush/screens/ingredients_to_list_screen.dart';
import 'package:yush/screens/profile_screen.dart';
import 'package:yush/screens/recipe_to_planner_screen.dart';
import 'package:yush/screens/user_profile_screen.dart';
import 'package:yush/tabs/directions_tab.dart';
import 'package:yush/tabs/ingredients_tab.dart';

class RecipeScreen extends StatefulWidget {
  const RecipeScreen({Key? key}) : super(key: key);

  @override
  _RecipeScreenState createState() => _RecipeScreenState();
}

class _RecipeScreenState extends State<RecipeScreen> {
  final tabColor = Colors.lightGreen[800];
  var follow = 'Follow';
  var following = 'Following';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        toolbarHeight: 70,
        actions: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 17.0,
                  horizontal: 15.0,
                ),
                child: GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfileScreen(),
                    ),
                  ),
                  child: Column(
                    children: [
                      Icon(
                        FontAwesomeIcons.bookmark,
                        size: 20.0,
                        color: Colors.black54,
                      ),
                      Text(
                        'Save',
                        style: TextStyle(color: Colors.black54),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 17.0,
                  horizontal: 15.0,
                ),
                child: GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RecipeToPlannerScreen(),
                    ),
                  ),
                  child: Column(
                    children: [
                      Icon(
                        Icons.calendar_today,
                        size: 20.0,
                        color: Colors.black54,
                      ),
                      Text(
                        'Plan',
                        style: TextStyle(color: Colors.black54),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 17.0,
                  horizontal: 15.0,
                ),
                child: GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => IngredientsToListScreen(),
                    ),
                  ),
                  child: Column(
                    children: [
                      Icon(
                        Icons.assignment_outlined,
                        size: 20.0,
                        color: Colors.black54,
                      ),
                      Text(
                        'Shop',
                        style: TextStyle(color: Colors.black54),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 17.0,
                  horizontal: 15.0,
                ),
                child: GestureDetector(
                  onTap: () => _onButtonPressed(),
                  child: Column(
                    children: [
                      Icon(
                        FontAwesomeIcons.share,
                        size: 20.0,
                        color: Colors.black54,
                      ),
                      Text(
                        'Share',
                        style: TextStyle(color: Colors.black54),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/macarons.jpg'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Curry Roasted Cauliflower Sweet Potato Salad (whole30, '
                'vegan &gluten free)',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18.0, color: Colors.black54),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'Likes',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text('1,023'),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Cook time',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.access_time,
                            size: 15.0,
                            color: Colors.yellow,
                          ),
                          Text(' 20'),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'total time',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text('30'),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Servings',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text('4 serving(s)'),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              color: Colors.grey[200],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UserProfileScreen(),
                      ),
                    ),
                    child: Container(
                      height: 70.0,
                      width: 70.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage('https://freedesignfile'
                              '.com/upload/2017/05/Female-chef-Stock-Photo-01.jpg'),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UserProfileScreen(),
                      ),
                    ),
                    child: Text(
                      'Michael Mayer',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Text(
                    '|',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UserProfileScreen(),
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          if (follow != following) {
                            follow = 'Following';
                          } else {
                            follow = 'Follow';
                          }
                        });
                      },
                      child: Text(
                        follow,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
            SizedBox(height: 10.0),
            TextButton(
              onPressed: null,
              style: OutlinedButton.styleFrom(
                minimumSize: Size(200.0, 40.0),
                backgroundColor: Colors.blue,
              ),
              child: Text(
                'Add to week plan',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 10.0),
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
                              child: Text(
                                'Ingredients',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            decoration: BoxDecoration(),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Directions',
                                style: TextStyle(color: Colors.black),
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
                      IngredientsTab(),
                      DirectionsTab(),
                    ]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onButtonPressed() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Column(
            children: [
              Icon(Icons.maximize),
              SizedBox(
                height: 5.0,
              ),
              Container(
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Icon(Icons.view_headline_outlined),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(' Hi! I thought you might like this recipe.'),
                    Text(' Https://vmt35.app.goo.gl/boQT'),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.grey[300],
                      minimumSize: Size(160.0, 40.0),
                    ),
                    onPressed: null,
                    child: Text('Nearby Share', style: TextStyle(color:
                    Colors.black),),
                  ),
                  TextButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.grey[300],
                      minimumSize: Size(160.0, 40.0),
                    ),
                    onPressed: null,
                    child: Text('Nearby Share', style: TextStyle(color:
                    Colors.black),),
                  ),
                ],
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 70.0,
                        width: 70.0,
                        decoration: BoxDecoration(
                          // color: Colors.purpleAccent,
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                        child: Image.asset('assets/images/instagram.png',
                          fit: BoxFit.cover,),
                      ),
                      SizedBox(height: 5.0,),
                      Text('Instagram', style: TextStyle(fontSize: 16.0),),
                      Text('Direct', style: TextStyle(color: Colors.grey),),
                    ],
                  )
                ],
              ),
            ],
          );
        });
  }
}
