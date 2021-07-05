import 'package:flutter/material.dart';

class MealPlansTab extends StatefulWidget {
  const MealPlansTab({Key? key}) : super(key: key);

  @override
  _MealPlansTabState createState() => _MealPlansTabState();
}

class _MealPlansTabState extends State<MealPlansTab> {
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
                  hintText: 'Search Meal Plans',
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
                    'Filter Meal Plans',
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
                  'Snack',
                  'Dinner',
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
                  'Breakfast',
                  'Lunch',
                  'Snack',
                  'Dinner',
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
                  'Breakfast',
                  'Lunch',
                  'Snack',
                  'Dinner',
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
      body: Column(
        children: [],
      ),
    );
  }
}
