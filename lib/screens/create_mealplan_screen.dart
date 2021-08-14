import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:yush/tabs/add_plan_info_tab.dart';
import 'package:yush/tabs/build_plan_tab.dart';

class CreateMealPlanScreen extends StatefulWidget {
  const CreateMealPlanScreen({Key? key}) : super(key: key);

  @override
  _CreateMealPlanScreenState createState() => _CreateMealPlanScreenState();
}

class _CreateMealPlanScreenState extends State<CreateMealPlanScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 2.0,
          title: Center(
            child: Text(
              'Meal Plan Create',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
              ),
            ),
          ),
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.clear),
            color: Colors.black,
          ),
          actions: [
            TextButton(
              onPressed: () {},
              child: Text(
                'Save',
                style: TextStyle(color: Colors.white),
              ),
              style: OutlinedButton.styleFrom(
                minimumSize: Size(80.0, 10.0),
                backgroundColor: Colors.green,
              ),
            ),
            SizedBox(
              width: 5.0,
            ),
          ],
          bottom: TabBar(
            unselectedLabelColor: Colors.black,
            labelColor: Colors.green,
            indicatorColor: Colors.green,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(
                child: Container(
                  child: Column(
                    children: [
                      Text(
                        'Step 1',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.bold),
                      ),
                      Text('Add Plan Info'),
                    ],
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Column(
                    children: [
                      Text('Step 2',  style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),),
                      Text('Build Plan'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            AddPlanInfoTab(),
            BuildPlanTab(),
          ],
        ),
      ),
    );
  }
}
