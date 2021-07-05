import 'package:flutter/material.dart';
import 'package:yush/models/recipe_model.dart';

class CookBooksTab extends StatefulWidget {
  const CookBooksTab({Key? key}) : super(key: key);

  @override
  _CookBooksTabState createState() => _CookBooksTabState();
}

class _CookBooksTabState extends State<CookBooksTab> {
  TextEditingController _searchController = TextEditingController();

  _clearSearch() {
    _searchController.clear();
  }

  Text _buildRatingStars(int rating) {
    String stars = '';
    for (int i = 0; i < rating; i++) {
      stars += '⭐';
    }
    return Text(stars);
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
                  hintText: 'Search CookBooks',
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
                    'Filter CookBooks',
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 1200.0,
              color: Colors.grey[300],
              child: Expanded(
                child: ListView.builder(
                  itemCount: recipes.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 5.0),
                          height: 170.0,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(100.0, 20.0, 20.0, 20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 120.0,
                                    child: Text(recipes[index].name),),
                                Text('This is a very very tasty food that will fill your soul and '
                                    'leave you wanting more everyday'),
                                _buildRatingStars(recipes[index].rating)

                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 20.0,
                          top: 15.0,
                          bottom: 15.0,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image(
                              width: 110.0,
                              image: AssetImage(recipes[index].imageUrl),
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      ]
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
