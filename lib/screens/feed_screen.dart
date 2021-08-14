import 'package:flutter/material.dart';
import 'package:yush/tabs/meal_plans_tab.dart';
import 'package:yush/tabs/people_tab.dart';
import 'package:yush/tabs/recipes_tab.dart';

class FeedScreen extends StatefulWidget {
  static final String id = 'feed_screen';

  @override
  _FeedScreenState createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  final tabColor = Colors.lightGreen[800];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          bottom: TabBar(
            unselectedLabelColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.label,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.green,
            ),
            tabs: [
              Tab(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: Colors.green,
                      width: 1,
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text('Recipes'),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: Colors.green,
                      width: 1,
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text('MealPlans'),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: Colors.green,
                      width: 1,
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text('People'),
                  ),
                ),
              ),
            ],
          ),
          title: Text(
            'Inspiration',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: TabBarView(
          children: [
            RecipesTab(),
            MealPlansTab(),
            PeopleTab(),
          ],
        ),
      ),
    );
  }
}
