import 'package:flutter/material.dart';
import 'package:yush/tabs/other_meal_plans_tab.dart';
import 'package:yush/tabs/own_meal_plans_tab.dart';

class UserMealPlansTab extends StatefulWidget {
  const UserMealPlansTab({Key? key}) : super(key: key);

  @override
  _UserMealPlansTabState createState() => _UserMealPlansTabState();
}

class _UserMealPlansTabState extends State<UserMealPlansTab> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          Container(
            child: TabBar(
              indicatorColor: Colors.green,
              indicatorSize: TabBarIndicatorSize.label,
              tabs: [
                Tab(
                  child: Container(
                    decoration: BoxDecoration(),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Own Meal Plans',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    decoration: BoxDecoration(),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Others',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            child: TabBarView(children: [
              OwnMealPlansTab(),
              OtherMealPlansTab(),
            ]),
          ),
        ],
      ),
    );
  }
}
