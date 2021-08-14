import 'package:flutter/material.dart';

class MealPlansPurchaseScreen extends StatefulWidget {
  const MealPlansPurchaseScreen({Key? key}) : super(key: key);

  @override
  _MealPlansPurchaseScreenState createState() => _MealPlansPurchaseScreenState();
}

class _MealPlansPurchaseScreenState extends State<MealPlansPurchaseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(20.0),
                height: 120.0,
                width: 120.0,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 40.0),
                child: Column(
                  children: [
                    Text(
                      'After School Snacks',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18.0,
                      ),
                    ),
                    Text(
                      'Healthy After School Snacks to refuel your kiddos!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                    Text(
                        'by Super Healthy Kids'
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0,),
              Text(
                '€20.99',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              Text(
                'How This Meal Plan Works:',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18.0,
                ),
              ),
              Container(
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: Text('•', style: TextStyle(fontSize: 40.0),),
                      minLeadingWidth: 5.0,
                      title: Text(
                        'Use this meal plan whenever you like'
                      ),
                    ),
                    Divider(thickness: 1, color: Colors.grey,),
                    ListTile(
                      leading: Text('•', style: TextStyle(fontSize: 40.0),),
                      minLeadingWidth: 5.0,
                      title: Text(
                          'The plan is stored in your profile for easy access'
                      ),
                    ),
                    Divider(thickness: 1, color: Colors.grey,),
                    ListTile(
                      leading: Text('•', style: TextStyle(fontSize: 40.0),),
                      minLeadingWidth: 5.0,
                      title: Text(
                          'Cook all recipes in this plan ad-free, forever'
                      ),
                    ),
                    Divider(thickness: 1, color: Colors.grey,),
                    ListTile(
                      leading: Text('•', style: TextStyle(fontSize: 40.0),),
                      minLeadingWidth: 5.0,
                      title: Text(
                          'Unlimited cook mode for the recipes this plan '
                              'contains'
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 8.0),
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size(MediaQuery.of(context).size.width, 60.0),
                    backgroundColor: Colors.green[600],
                  ),
                  onPressed: null,
                  child: Column(
                    children: [
                      Text('Get this Meal Plan', style: TextStyle(color:
                      Colors.white, fontSize: 18.0, fontWeight: FontWeight.w500),),
                      Text('€20.99 (one-time purchase)', style: TextStyle(color:
                      Colors.white, fontSize: 12.0,),),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

