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
    // Navigator.of(context).pop();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0),
          child: Container(
            height: 35.0,
            child: Row(
              children: [
                Flexible(
                  child: TextField(
                    textAlign: TextAlign.center,
                    controller: _searchController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        // width: 0.0 produces a thin "hairline" border
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 0.0),
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                      border: OutlineInputBorder(),
                      hintText: 'Search recipes',
                      hintStyle: TextStyle(color: Colors.grey),

                      // suffixIcon: IconButton(
                      //   onPressed: _clearSearch,
                      //   icon: Icon(Icons.clear),
                      // ),
                    ),
                    onSubmitted: (input) {
                      print('input');
                    },
                  ),
                ),
              ],
            ),
          ),
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
              title: DropdownButton<String>(
                hint: Text('Meal Type'),
                items: <String>[
                  'Breakfast',
                  'Lunch',
                  'Dinner',
                  'Snacks',
                  'Drinks',
                  'Salad',
                ].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: new Text(value),
                  );
                }).toList(),
                onChanged: (_) {},
              ),
            ),
            ListTile(
              title: DropdownButton<String>(
                hint: Text('Cook Time'),
                items: <String>[
                  'Below 10 min',
                  'Between 10 - 30 min',
                  'More than 30 min',
                ].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: new Text(value),
                  );
                }).toList(),
                onChanged: (_) {},
              ),
            ),
            ListTile(
              title: DropdownButton<String>(
                hint: Text('Special Diets'),
                items: <String>[
                  'Vegetarian',
                  'Vegan',
                  'Gluten Free',
                  'Dairy Free',
                  'Low Carb',
                  'Keto',
                ].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: new Text(value),
                  );
                }).toList(),
                onChanged: (_) {},
              ),
            ),
          ],
        ),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
        children: [
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RecipeScreen(),
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/macarons.jpg'),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RecipeScreen(),
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/food1.jpg'),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RecipeScreen(),
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/food2.jpg'),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RecipeScreen(),
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/food3.jpeg'),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RecipeScreen(),
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/food4.jpg'),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RecipeScreen(),
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/food5.jpg'),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RecipeScreen(),
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/food6.jpg'),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RecipeScreen(),
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/food7.jpg'),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RecipeScreen(),
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/food8.png'),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RecipeScreen(),
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/macarons.jpg'),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RecipeScreen(),
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/food1.jpg'),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RecipeScreen(),
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/food2.jpg'),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RecipeScreen(),
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/food3.jpeg'),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RecipeScreen(),
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/food4.jpg'),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RecipeScreen(),
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/food5.jpg'),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RecipeScreen(),
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/food6.jpg'),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RecipeScreen(),
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/food7.jpg'),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RecipeScreen(),
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/food8.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
