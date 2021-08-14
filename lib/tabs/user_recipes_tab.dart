import 'package:flutter/material.dart';
import 'package:yush/tabs/other_recipes_tab.dart';
import 'package:yush/tabs/own_recipes_tab.dart';

class UserRecipesTab extends StatefulWidget {
  const UserRecipesTab({Key? key}) : super(key: key);

  @override
  _UserRecipesTabState createState() => _UserRecipesTabState();
}

class _UserRecipesTabState extends State<UserRecipesTab> {
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
                        'Own Recipes',
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
              OwnRecipesTab(),
              OtherRecipesTab(),
            ]),
          ),
        ],
      ),
    );
  }
}
