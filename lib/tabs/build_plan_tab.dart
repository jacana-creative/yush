import 'package:flutter/material.dart';

class BuildPlanTab extends StatefulWidget {
  const BuildPlanTab({Key? key}) : super(key: key);

  @override
  _BuildPlanTabState createState() => _BuildPlanTabState();
}

class _BuildPlanTabState extends State<BuildPlanTab> {
  bool _value = false;
  dynamic val = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            SizedBox(width: 3.0,),
            TextButton(
              style: OutlinedButton.styleFrom(
                minimumSize: Size(80.0, 10.0),
                backgroundColor: Colors.green,
              ),
              onPressed: null,
              child: Text('Prev', style: TextStyle(color: Colors.white),),),
            SizedBox(width: 3.0,),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                color: Colors.grey[200],
                height: 250.0,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 60.0, vertical: 20.0),
                  child: Text('You`ll get to pick your own awesome cover '
                      'photo soon! Please add recipes to your meal plan '
                      'first, so you have images to choose from.', textAlign:
                  TextAlign.center,),
                ),
              ),
              SizedBox(height: 10.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text('Monday, ', style: TextStyle(fontWeight:
                      FontWeight.bold),),
                      Text('Week 1'),
                    ],
                  ),

                ],
              ),
              SizedBox(height: 10.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      minimumSize: Size(160.0, 50.0),
                    ),
                    onPressed: null,
                    child: Text('Add a '
                        'Recipe'),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      minimumSize: Size(160.0, 50.0),
                    ),
                    onPressed: null,
                    child: Text('Quick '
                        'Add'),
                  ),
                ],
              ),
              SizedBox(height: 20.0,),

              SizedBox(height: 10.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text('Tuesday, ', style: TextStyle(fontWeight:
                      FontWeight.bold),),
                      Text('Week 1'),
                    ],
                  ),

                ],
              ),
              SizedBox(height: 10.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      minimumSize: Size(160.0, 50.0),
                    ),
                    onPressed: null,
                    child: Text('Add a '
                        'Recipe'),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      minimumSize: Size(160.0, 50.0),
                    ),
                    onPressed: null,
                    child: Text('Quick '
                        'Add'),
                  ),
                ],
              ),
              SizedBox(height: 20.0,),

              SizedBox(height: 10.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text('Wednesday, ', style: TextStyle(fontWeight:
                      FontWeight.bold),),
                      Text('Week 1'),
                    ],
                  ),

                ],
              ),
              SizedBox(height: 10.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      minimumSize: Size(160.0, 50.0),
                    ),
                    onPressed: null,
                    child: Text('Add a '
                        'Recipe'),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      minimumSize: Size(160.0, 50.0),
                    ),
                    onPressed: null,
                    child: Text('Quick '
                        'Add'),
                  ),
                ],
              ),
              SizedBox(height: 20.0,),

              SizedBox(height: 10.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text('Thursday, ', style: TextStyle(fontWeight:
                      FontWeight.bold),),
                      Text('Week 1'),
                    ],
                  ),

                ],
              ),
              SizedBox(height: 10.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      minimumSize: Size(160.0, 50.0),
                    ),
                    onPressed: null,
                    child: Text('Add a '
                        'Recipe'),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      minimumSize: Size(160.0, 50.0),
                    ),
                    onPressed: null,
                    child: Text('Quick '
                        'Add'),
                  ),
                ],
              ),
              SizedBox(height: 20.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text('Friday, ', style: TextStyle(fontWeight:
                      FontWeight.bold),),
                      Text('Week 1'),
                    ],
                  ),

                ],
              ),
              SizedBox(height: 10.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      minimumSize: Size(160.0, 50.0),
                    ),
                    onPressed: null,
                    child: Text('Add a '
                        'Recipe'),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      minimumSize: Size(160.0, 50.0),
                    ),
                    onPressed: null,
                    child: Text('Quick '
                        'Add'),
                  ),
                ],
              ),
              SizedBox(height: 20.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text('Saturday, ', style: TextStyle(fontWeight:
                      FontWeight.bold),),
                      Text('Week 1'),
                    ],
                  ),

                ],
              ),
              SizedBox(height: 10.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      minimumSize: Size(160.0, 50.0),
                    ),
                    onPressed: null,
                    child: Text('Add a '
                        'Recipe'),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      minimumSize: Size(160.0, 50.0),
                    ),
                    onPressed: null,
                    child: Text('Quick '
                        'Add'),
                  ),
                ],
              ),
              SizedBox(height: 20.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text('Sunday, ', style: TextStyle(fontWeight:
                      FontWeight.bold),),
                      Text('Week 1'),
                    ],
                  ),

                ],
              ),
              SizedBox(height: 10.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      minimumSize: Size(160.0, 50.0),
                    ),
                    onPressed: null,
                    child: Text('Add a '
                        'Recipe'),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      minimumSize: Size(160.0, 50.0),
                    ),
                    onPressed: null,
                    child: Text('Quick '
                        'Add'),
                  ),
                ],
              ),
              SizedBox(height: 20.0,),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                color: Colors.grey[300],
                height: 50.0,
                child: Row(
                  children: [
                    Text(
                      'Original Meal Plan Privacy',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Radio(
                            value: 1,
                            groupValue: val,
                            onChanged: (value) {
                              setState(() {
                                val = value;
                              });
                            }),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Public', style: TextStyle
                              (fontWeight: FontWeight.bold),),
                            Text('MealPlan is searchable in our '
                                ' database'),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Radio(
                            value: 2,
                            groupValue: val,
                            onChanged: (value) {
                              setState(() {
                                val = value;
                              });
                            }),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Secret', style: TextStyle
                              (fontWeight: FontWeight.bold),),
                            Text('Only you can see this Meal Plan'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
