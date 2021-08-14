import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:dotted_border/dotted_border.dart';

class RecipeToPlannerScreen extends StatefulWidget {
  const RecipeToPlannerScreen({Key? key}) : super(key: key);

  @override
  _RecipeToPlannerScreenState createState() => _RecipeToPlannerScreenState();
}

class _RecipeToPlannerScreenState extends State<RecipeToPlannerScreen> {
  _androidDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          insetPadding: EdgeInsets.all(10),
          contentPadding: EdgeInsets.zero,
          children: [
            Container(
              width: double.infinity,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  TextButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      minimumSize: Size(85.0, 60.0),
                    ),
                    child: Text(
                      'Breakfast',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () => Navigator.pop(context),
                  ),
                  TextButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.green,
                      minimumSize: Size(85.0, 60.0),
                    ),
                    child: Text(
                      'Lunch',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () => Navigator.pop(context),
                  ),
                  TextButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.lightBlueAccent,
                      minimumSize: Size(85.0, 60.0),
                    ),
                    child: Text(
                      'Snack',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () => Navigator.pop(context),
                  ),
                  TextButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.red,
                      minimumSize: Size(85.0, 60.0),
                    ),
                    child: Text(
                      'Dinner',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          'Add Recipe to Planner',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () => _androidDialog(),
            icon: Icon(FontAwesomeIcons.ellipsisV),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: Image(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/macarons'
                    '.jpg'),
                width: 60.0,
                height: 60.0,
              ),
              title: Text('Taco Bowl with Avocado Lime Dressing'),
              subtitle: Text('@superhealthykids'),
            ),
            Divider(),
            ExpansionTile(
              leading: Container(
                height: 60.0,
                width: 60.0,
                child: CircleAvatar(
                  backgroundColor: Colors.grey[300],
                  child: Icon(
                    Icons.person,
                    color: Colors.grey,
                    size: 40.0,
                  ),
                ),
              ),
              title: Text(
                'July 12 - July 18',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              subtitle: Text('Time'),
              children: [
                buildContainer(
                  labelText: 'Add Recipe to Monday',
                  Text: Text('Monday, July 12'),
                ),
                buildContainer(
                  labelText: 'Add Recipe to Tuesday',
                  Text: Text('Tuesday, July 13'),
                ),
              ],
            ),
            Divider(),
            ExpansionTile(

              leading: Image(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/food1'
                    '.jpg'),
                width: 60.0,
                height: 60.0,
              ),
              title: Text(
                'Cobb Salad',
                // style: TextStyle(fontWeight: FontWeight.w600),
              ),
              subtitle: Text('@100daysofrealfood'),
              children: [
                buildContainer(
                  labelText: 'Add Recipe to Wednesday',
                  Text: Text('Wednesday, July 14'),
                ),
                buildContainer(
                  labelText: 'Add Recipe to Thursday',
                  Text: Text('Thursday, July 15'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildDashedBorder({required Widget child}) => DottedBorder(
      child: child,
      color: Colors.grey,
      padding: EdgeInsets.symmetric(horizontal: 100.0),
    );

Widget buildContainer({required String labelText, required Widget Text}) {
  return Container(
    height: 120.0,
    width: 500.0,
    color: Colors.grey[300],
    child: Column(
      children: [
        Row(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
              child: Text,
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(12.0, 5.0, 12.0, 5.0),
          child: buildDashedBorder(
            child: TextFormField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                labelText: labelText,
                labelStyle: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
