import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yush/screens/profile_screen.dart';
import 'package:yush/screens/user_profile_screen.dart';

class RecipeScreen extends StatefulWidget {
  const RecipeScreen({Key? key}) : super(key: key);

  @override
  _RecipeScreenState createState() => _RecipeScreenState();
}

class _RecipeScreenState extends State<RecipeScreen> {
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
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 17.0,
                  horizontal: 15.0,
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
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 17.0,
                  horizontal: 15.0,
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
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 17.0,
                  horizontal: 15.0,
                ),
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
                      Text('4 servings'),
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
                      )),
                    ),
                  ),
                  Text(
                    'Michael Mayer',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    '|',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Follow',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  style: ButtonStyle(

                  ),
                  onPressed: () {},
                  child: Text(
                    'Ingredients',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black
                    ),
                  ),
                ),
                TextButton(
                  onPressed: null,
                  child: Text(
                    'Directions',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(),
                child: ListTile(
                  subtitle: Text('4 Pieces'),
                  tileColor: Colors.grey[300],
                  title: Text('Beef Tenderloin'),
                  trailing: Icon(Icons.add, size: 35.0, color: Colors
                      .teal,),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 30.0, vertical: 0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(),
                child: ListTile(
                  subtitle: Text('1 Package'),
                  tileColor: Colors.grey[300],
                  title: Text('Beef Broth'),
                  trailing: Icon(Icons.add, size: 35.0, color: Colors
                      .teal,),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 30.0, vertical: 0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(),
                child: ListTile(
                  subtitle: Text('12 oz'),
                  tileColor: Colors.grey[300],
                  title: Text('Hash Browns'),
                  trailing: Icon(Icons.add, size: 35.0, color: Colors
                      .teal,),
                  contentPadding:
                  EdgeInsets.symmetric(horizontal: 30.0, vertical: 0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(),
                child: ListTile(
                  subtitle: Text('4 Pieces'),
                  tileColor: Colors.grey[300],
                  title: Text('Beef Tenderloin'),
                  trailing: Icon(Icons.add, size: 35.0, color: Colors
                      .teal,),
                  contentPadding:
                  EdgeInsets.symmetric(horizontal: 30.0, vertical: 0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
