import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yush/screens/planner_screen.dart';
import 'package:yush/screens/recipe_screen.dart';

class OwnMealPlansScreen extends StatefulWidget {
  const OwnMealPlansScreen({Key? key}) : super(key: key);

  @override
  _OwnMealPlansScreenState createState() => _OwnMealPlansScreenState();
}

class _OwnMealPlansScreenState extends State<OwnMealPlansScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Meal Plan',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: null,
            icon: Icon(FontAwesomeIcons.ellipsisH),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  ClipRRect(
                    child: Image.asset('assets/images/food1'
                        '.jpg'),
                  ),
                  Positioned(
                    top: 80.0,
                    left: 130.0,
                    child: Column(
                      children: [
                        Container(
                          height: 80.0,
                          width: 80.0,
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(40.0)),
                          child: Icon(
                            Icons.person,
                            color: Colors.grey,
                            size: 70.0,
                          ),
                        ),
                        Text(
                          '1234',
                          style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        Text(
                          'by Time 123',
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Recipes(5)'),
                SizedBox(width: 100.0,),
                TextButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.green
                  ),
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RecipeScreen(),
                    ),
                  ),
                  child: Column(
                    children: [
                      Text('Add', style: TextStyle(color: Colors.white),),
                      Text('Recipe', style: TextStyle(color: Colors.white),),
                    ],
                  ),
                ),
                TextButton(
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.green
                  ),
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PlannerScreen(),
                    ),
                  ),
                  child: Column(
                    children: [
                      Text('Add to', style: TextStyle(color: Colors.white),),
                      Text('Meal Plan', style: TextStyle(color: Colors.white),),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
