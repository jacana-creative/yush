import 'package:flutter/material.dart';
import 'package:yush/tabs/cook_books_tab.dart';
import 'package:yush/tabs/meal_plans_tab.dart';
import 'package:yush/tabs/recipes_tab.dart';

class FeedScreen extends StatefulWidget {
  static final String id = 'feed_screen';

  @override
  _FeedScreenState createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          bottom: TabBar(
            unselectedLabelColor: Colors.green,
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
                    child: Text('Cookbooks'),
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
            ],
          ),
          title: Center(
            child: Text(
              'Yush!',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Billabong',
                fontSize: 35.0,
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            RecipesTab(),
            CookBooksTab(),
            MealPlansTab(),
          ],
        ),
      ),
    );
  }
}
