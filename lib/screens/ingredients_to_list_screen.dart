import 'package:flutter/material.dart';
import 'package:yush/screens/recipe_screen.dart';
import 'package:yush/screens/shopping_list_screen.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

class IngredientsToListScreen extends StatefulWidget {
  const IngredientsToListScreen({Key? key}) : super(key: key);

  @override
  _IngredientsToListScreenState createState() =>
      _IngredientsToListScreenState();
}

class _IngredientsToListScreenState extends State<IngredientsToListScreen> {
  _androidDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Icon(
            Icons.assignment_outlined,
            color: Colors.green[700],
            size: 50.0,
          ),
          children: [
            Container(
              margin: EdgeInsets.all(10.0),
              child: Text(
                '10 items have been added to your grocery list from'
                ' @recipe Recipe, What do you want to do next? ',
                textAlign: TextAlign.center,
              ),
            ),
            Divider(),
            Center(
              child: SimpleDialogOption(
                child: Text(
                  'Go to my Grocery List',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ShoppingListScreen(),
                  ),
                ),
              ),
            ),
            Divider(),
            Center(
              child: SimpleDialogOption(
                child: Text(
                  'Back to recipe',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RecipeScreen(),
                  ),
                ),
              ),
            ),
            Divider(),
            Center(
              child: SimpleDialogOption(
                child: Text(
                  'Cancel',
                  style: TextStyle(color: Colors.redAccent),
                ),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          'Add Ingredients to List',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          TextButton(
            style: OutlinedButton.styleFrom(backgroundColor: Colors.green[700]),
            onPressed: _androidDialog,
            child: Text(
              'Save',
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(
            width: 5.0,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ExpansionTile(
              leading: Image(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/food1'
                    '.jpg'),
                width: 60.0,
                height: 60.0,
              ),
              title: Text(
                'Cobb Salad',
                // style: TextStyle(fontWeight: FontWeight.w600),
              ),
              subtitle: Text('@100daysofrealfood'),
              children: [
                Container(
                  height: 120,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        margin: EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Text('Servings'),
                            SizedBox(height: 10.0,),
                            Row(
                              children: [
                                Icon(Icons.remove),
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 8.0),
                                  height: 30.0,
                                  width: 40.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: Container(
                                    margin: EdgeInsets.symmetric(horizontal:
                                    15, vertical: 6.0),
                                    child: Text('2'),
                                  ),
                                ),
                                Icon(Icons.add),
                              ],
                            ),
                          ],
                        ),
                      ),
                      VerticalDivider(width: 1.0,),
                      Container(
                        margin: EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Text('What day to cook?'),
                            SizedBox(height: 10.0,),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 8.0),
                              height: 30.0,
                              width: 103.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal:
                                10, vertical: 6.0),
                                child: Text('Wed, July 14'),
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text('Edit', style: TextStyle(color: Colors
                                .green[700]),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(),
                Container(
                  child: Row(
                    children: [
                      Checkbox(
                        value: timeDilation != 1.0,
                        onChanged: (bool? value) {
                          setState(() {
                            timeDilation = value! ? 2.0 : 1.0;
                          });
                        },
                      ),
                      Text('corn, frozen, ', style: TextStyle(fontWeight:
                      FontWeight.w600),),
                      Text('1/4 cup', style: TextStyle(color: Colors.grey),)
                    ],
                  ),
                ),
                buildContainer(title: 'Sweet potato, ', subTitle: '1 medium',
                    setState: setState),
                buildContainer(title: 'Romaine lettuce, ', subTitle: '3 cup '
                    'shredder', setState: setState),
                buildContainer(title: 'sea salt', subTitle: '1/16 teaspoon',
                    setState: setState),
                buildContainer(title: 'black pepper', subTitle: '1/16 '
                    'teaspoon', setState: setState),
                buildContainer(title: 'brown rice, raw, ', subTitle: '1/2 '
                    'cup', setState: setState),
                buildContainer(title: 'water, ', subTitle: '1 cup', setState:
                setState),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildContainer({required String title, required String subTitle,
required Function setState}) {
  return Container(
    child: Row(
      children: [
        Checkbox(
          value: timeDilation != 1.0,
          onChanged: (bool? value) {
            setState(() {
              timeDilation = value! ? 2.0 : 1.0;
            });
          },
        ),
        Text(title, style: TextStyle(fontWeight:
        FontWeight.w600),),
        Text(subTitle, style: TextStyle(color: Colors.grey),)
      ],
    ),
  );
}
