import 'package:flutter/material.dart';
import 'package:yush/screens/own_meal_plans_screen.dart';

class OwnMealPlansTab extends StatefulWidget {
  const OwnMealPlansTab({Key? key}) : super(key: key);

  @override
  _OwnMealPlansTabState createState() => _OwnMealPlansTabState();
}

class _OwnMealPlansTabState extends State<OwnMealPlansTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Stack(children: [
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OwnMealPlansScreen(),
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80.0),
                  ),
                  margin: EdgeInsets.all(10.0),
                  height: 150.0,
                  width: 150.0,
                  child: ClipRRect(
                    child: Image.asset('assets/images/food1'
                        '.jpg'),
                  ),
                ),
              ),
              Positioned(
                top: 100.0,
                left: 60.0,
                child: Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],),
          ],
        ),
      ],
    );
  }
}
