import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yush/screens/search_screen.dart';

class PlannerScreen extends StatefulWidget {
  @override
  _PlannerScreenState createState() => _PlannerScreenState();
}

class _PlannerScreenState extends State<PlannerScreen> {
  TextEditingController _searchController = TextEditingController();

  _clearSearch() {
    _searchController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Planner',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: null,
            ),
          ],
          actionsIconTheme: IconThemeData(color: Colors.black),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey[300],
                  child: Icon(
                    Icons.person,
                    color: Colors.grey[500],
                  ),
                ),
                title: Text('Apr 26 - May 2'),
                subtitle: Text('Plan your own way'),
                trailing: Text('Add a meal plan'),
              ),
              Divider(),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey[300],
                  child: Icon(
                    Icons.person,
                    color: Colors.grey[500],
                  ),
                ),
                title: Text('May 3 - May 9'),
                subtitle: Text('Plan your own way'),
                trailing: Text('Add a meal plan'),
              ),
              Container(
                color: Colors.grey[300],
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text('Monday, '),
                          Text('May 3'),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              minimumSize: Size(150.0, 50.0),
                            ),
                            onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SearchScreen(),
                              ),
                            ),
                            child: Text(
                              'Add a '
                              'Recipe',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          buildTextFieldContainer(),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: [
                          Text('Tuesday, '),
                          Text('May 4'),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              minimumSize: Size(150.0, 50.0),
                            ),
                            onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SearchScreen(),
                              ),
                            ),
                            child: Text(
                              'Add a '
                              'Recipe',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          buildTextFieldContainer(),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: [
                          Text('Wednesday, '),
                          Text('May 5'),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              minimumSize: Size(150.0, 50.0),
                            ),
                            onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SearchScreen(),
                              ),
                            ),
                            child: Text(
                              'Add a '
                              'Recipe',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          buildTextFieldContainer(),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: [
                          Text('Thursday, '),
                          Text('May 6'),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              minimumSize: Size(150.0, 50.0),
                            ),
                            onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SearchScreen(),
                              ),
                            ),
                            child: Text(
                              'Add a '
                              'Recipe',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          buildTextFieldContainer(),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: [
                          Text('Friday, '),
                          Text('May 7'),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              minimumSize: Size(150.0, 50.0),
                            ),
                            onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SearchScreen(),
                              ),
                            ),
                            child: Text(
                              'Add a '
                              'Recipe',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          buildTextFieldContainer(),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: [
                          Text('Saturday, '),
                          Text('May 8'),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              minimumSize: Size(150.0, 50.0),
                            ),
                            onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SearchScreen(),
                              ),
                            ),
                            child: Text(
                              'Add a '
                              'Recipe',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          buildTextFieldContainer(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

Widget buildTextFieldContainer() {
  return Container(
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey),
    ),
    height: 50.0,
    width: 150.0,
    child: TextFormField(
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        hintText: 'Quick Add',
        hintStyle: TextStyle(
          color: Colors.grey,
        ),
        labelStyle: TextStyle(
          color: Colors.grey,
        ),
      ),
    ),
  );
}
