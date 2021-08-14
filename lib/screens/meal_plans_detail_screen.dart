import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yush/screens/meal_plans_purchase_screen.dart';
import 'package:yush/screens/shopping_list_screen.dart';
import 'package:yush/widgets/meal_plans_carousel.dart';

class MealPlansDetailScreen extends StatefulWidget {
  const MealPlansDetailScreen({Key? key}) : super(key: key);

  @override
  _MealPlansDetailScreenState createState() => _MealPlansDetailScreenState();
}

class _MealPlansDetailScreenState extends State<MealPlansDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Text('Buy'),
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MealPlansPurchaseScreen(),
          ),
        ),
      ),
      appBar: AppBar(
        title: Text(
          'Select Mealplans',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 0.0),
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'EZPZ PASTA DINNER',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Divider(),
                    Text(
                      'Meal Plan Description',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                        'Get out of meal Planning rut with this easy meal plan where'
                        ' every recipe you need for breakfast, lunch and dinner ALL '
                        'MONTH is laid out for you.'),
                    Divider(
                      thickness: 3,
                    ),
                  ],
                ),
              ),
            ],
          ),
          MealPlansCarousel(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.grey[300],
                  child: Container(
                    margin: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 100.0,
                              width: 100.0,
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/katelyn.jpeg'),
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Expanded(
                              child: Container(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Katelyn Smith',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 3.0,
                                    ),
                                    Text(
                                      'I am SUPER busy mom of 4 children, and I love '
                                      'being healthy.',
                                    ),
                                    SizedBox(
                                      height: 3.0,
                                    ),
                                    Text(
                                      'www.superhealthymom.com',
                                      style: TextStyle(
                                        color: Colors.orangeAccent,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            OutlinedButton(
                              onPressed: null,
                              child: Row(
                                children: [
                                  Text(
                                    'Following',
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              '23 Followers',
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            Text(
                              '|',
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            Text(
                              '67 Following',
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'About Katelyn Smith?',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Katelyn Smith Meal Plan is delivered to you in the Yush '
                      'app. Yushe'
                  ' lets you interact with your cookbooks at every '
                  'stage in the cooking process',
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
                // SizedBox(height: 20.0,),
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Text(
                        '• Shop with automatic, editable grocery list',
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                      Text(
                        '• Shop with automatic, editable grocery list',
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                      Text(
                        '• Shop with automatic, editable grocery list',
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                      Text(
                        '• Shop with automatic, editable grocery list',
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
