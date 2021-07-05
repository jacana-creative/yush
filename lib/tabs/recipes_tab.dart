import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:yush/screens/recipe_screen.dart';
import 'package:yush/widgets/recipe_carousel.dart';

class RecipesTab extends StatefulWidget {
  const RecipesTab({Key? key}) : super(key: key);

  @override
  _RecipesTabState createState() => _RecipesTabState();
}

class _RecipesTabState extends State<RecipesTab> {
  TextEditingController _searchController = TextEditingController();

  _clearSearch() {
    _searchController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Flexible(
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                  border: InputBorder.none,
                  hintText: 'Search recipes',
                  prefixIcon: Icon(
                    Icons.search,
                    size: 30.0,
                  ),
                  suffixIcon: IconButton(
                    onPressed: _clearSearch,
                    icon: Icon(Icons.clear),
                  ),
                  filled: true,
                ),
                onSubmitted: (input) {
                  print('input');
                },
              ),
            ),
          ],
        ),
        iconTheme: IconThemeData(color: Colors.green),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(Icons.clear),
                  ),
                  Text(
                    'Filter Recipes',
                    style: TextStyle(
                      fontSize: 17.0,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Clear All',
                      style: TextStyle(color: Colors.grey),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.grey[300])),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 2,
            ),
            ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Ingredients'),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 0.0, vertical: 5.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'e.g. Chicken, Green Beans, etc',
                      ),
                      onSaved: (input) {},
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('Meal Type'),
              trailing: IconButton(
                icon: Icon(Icons.keyboard_arrow_down),
                onPressed: () => null,
              ),
              onTap: () => null,
            ),
            ListTile(
              title: Text('Cook Time'),
              trailing: IconButton(
                icon: Icon(Icons.keyboard_arrow_down),
                onPressed: () => null,
              ),
              onTap: () => null,
            ),
            ListTile(
              title: Text('Special Diets'),
              trailing: IconButton(
                icon: Icon(Icons.keyboard_arrow_down),
                onPressed: () => null,
              ),
              onTap: () => null,
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RecipeScreen(),
                        ),
                      ),
                      child: Container(
                        margin: EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/macarons.jpg'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RecipeScreen(),
                        ),
                      ),
                      child: Container(
                        margin: EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/food1.jpg'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RecipeScreen(),
                        ),
                      ),
                      child: Container(
                        margin: EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/food2.jpg'),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RecipeScreen(),
                        ),
                      ),
                      child: Container(
                        margin: EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/food3.jpeg'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RecipeScreen(),
                        ),
                      ),
                      child: Container(
                        margin: EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/food4.jpg'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RecipeScreen(),
                        ),
                      ),
                      child: Container(
                        margin: EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/food5.jpg'),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RecipeScreen(),
                        ),
                      ),
                      child: Container(
                        margin: EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/food6.jpg'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RecipeScreen(),
                        ),
                      ),
                      child: Container(
                        margin: EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/food7.jpg'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RecipeScreen(),
                        ),
                      ),
                      child: Container(
                        margin: EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/food8.png'),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
