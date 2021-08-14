import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yush/models/recipe_model.dart';
import 'package:yush/screens/meal_plans_detail_screen.dart';

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
        title: Container(
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
                    hintText: 'Search Meal Plans',
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
                    'Filter MealPlans',
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 1200.0,
              color: Colors.grey[300],
              child: ListView.builder(
                itemCount: recipes.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                      margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                      height: 150.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: GestureDetector(
                              onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      MealPlansDetailScreen(),
                                ),
                              ),
                              child: Image(
                                width: 120.0,
                                height: 150.0,
                                image: AssetImage(recipes[index].imageUrl),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(width: 10.0,),
                          Expanded(
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                    onTap: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            MealPlansDetailScreen(),
                                      ),
                                    ),
                                    child: Container(
                                      margin: EdgeInsets.symmetric
                                        (vertical: 8.0),
                                      width: 120.0,
                                      child: GestureDetector(
                                        onTap: () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                MealPlansDetailScreen(),
                                          ),
                                        ),
                                        child: Text(
                                          recipes[index].name,
                                          style: TextStyle(
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            MealPlansDetailScreen(),
                                      ),
                                    ),
                                    child: Text(
                                        'This is very very tasty food that will fill your soul and '
                                        'leave you wanting more everyday',
                                      textAlign: TextAlign.start,
                                      overflow: TextOverflow.clip,
                                      maxLines: 3,
                                    ),
                                  ),
                                  SizedBox(height: 8.0,),
                                  GestureDetector(
                                    onTap: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            MealPlansDetailScreen(),
                                      ),
                                    ),
                                    child: Text(
                                      recipes[index].userAccount,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                 SizedBox(height: 8.0,),
                                 Row(
                                   children: [
                                     Icon(FontAwesomeIcons.heart, size: 15.0,),
                                     Text(' Liked by '),
                                     Text(
                                       recipes[index].rating
                                     ),
                                     Text(' People'),
                                   ],
                                 ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                    // Positioned(
                    //   left: 10.0,
                    //   top: 15.0,
                    //   bottom: 15.0,
                    //   child: ClipRRect(
                    //     borderRadius: BorderRadius.circular(20.0),
                    //     child: Image(
                    //       width: 120.0,
                    //       image: AssetImage(recipes[index].imageUrl),
                    //       fit: BoxFit.cover,
                    //     ),
                    //   ),
                    // )

                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
