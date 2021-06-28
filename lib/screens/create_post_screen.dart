import 'package:flutter/material.dart';
import 'package:yush/screens/create_mealplan_screen.dart';
import 'package:yush/screens/create_recipe_screen.dart';

class CreatePostScreen extends StatefulWidget {
  @override
  _CreatePostScreenState createState() => _CreatePostScreenState();
}

class _CreatePostScreenState extends State<CreatePostScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'Discover!',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Billabong',
              fontSize: 35.0,
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.add,
              color: Colors.black,
            ),
            onPressed: () => showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ListTile(
                        leading: Icon(Icons.addchart_outlined),
                        title: Text('Create a recipe'),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CreateRecipeScreen(),
                          ),
                        ),
                      ),
                      Divider(),
                      ListTile(
                        leading: Icon(Icons.ac_unit),
                        title: Text('Create a mealplan'),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CreateMealPlanScreen(),
                          ),
                        ),
                      ),
                    ],
                  );
                }),
          ),
        ],
      ),
      body: Center(
          child: Container(
        child: Column(
          children: [
            Text(''),
          ],
        ),
      )),
    );
  }
}
