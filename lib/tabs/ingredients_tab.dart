import 'package:flutter/material.dart';

class IngredientsTab extends StatefulWidget {
  const IngredientsTab({Key? key}) : super(key: key);

  @override
  _IngredientsTabState createState() => _IngredientsTabState();
}

class _IngredientsTabState extends State<IngredientsTab> {
  dynamic _checked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: Card(
            elevation: 2,
            shape: RoundedRectangleBorder(),
            child: CheckboxListTile(
              value: _checked,
              onChanged: (dynamic value) {
                setState(() {
                  _checked = value;
                });
              },
              controlAffinity: ListTileControlAffinity.leading,
              tileColor: Colors.grey[300],
              title: Text('All Ingredients'),
              contentPadding:
              EdgeInsets.symmetric(horizontal: 30.0, vertical: 0),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: Card(
            elevation: 2,
            shape: RoundedRectangleBorder(),
            child: CheckboxListTile(
              value: _checked,
              onChanged: (dynamic value) {
                setState(() {
                  _checked = value;
                });
              },
              controlAffinity: ListTileControlAffinity.leading,
              subtitle: Text('4 Pieces'),
              tileColor: Colors.grey[300],
              title: Text('Beef Tenderloin'),
              secondary: Icon(
                Icons.add,
                size: 35.0,
                color: Colors.teal,
              ),
              contentPadding:
              EdgeInsets.symmetric(horizontal: 30.0, vertical: 0),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: Card(
            elevation: 2,
            shape: RoundedRectangleBorder(),
            child: CheckboxListTile(
              value: _checked,
              onChanged: (dynamic value) {
                setState(() {
                  _checked = value;
                });
              },
              controlAffinity: ListTileControlAffinity.leading,
              subtitle: Text('1 Package'),
              tileColor: Colors.grey[300],
              title: Text('Beef Broth'),
              secondary: Icon(
                Icons.add,
                size: 35.0,
                color: Colors.teal,
              ),
              contentPadding:
              EdgeInsets.symmetric(horizontal: 30.0, vertical: 0),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: Card(
            elevation: 2,
            shape: RoundedRectangleBorder(),
            child: CheckboxListTile(
              value: _checked,
              onChanged: (dynamic value) {
                setState(() {
                  _checked = value;
                });
              },
              controlAffinity: ListTileControlAffinity.leading,
              subtitle: Text('12 oz'),
              tileColor: Colors.grey[300],
              title: Text('Hash Browns'),
              secondary: Icon(
                Icons.add,
                size: 35.0,
                color: Colors.teal,
              ),
              contentPadding:
              EdgeInsets.symmetric(horizontal: 30.0, vertical: 0),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: Card(
            elevation: 2,
            shape: RoundedRectangleBorder(),
            child: CheckboxListTile(
              value: _checked,
              onChanged: (dynamic value) {
                setState(() {
                  _checked = value;
                });
              },
              controlAffinity: ListTileControlAffinity.leading,
              subtitle: Text('4 Pieces'),
              tileColor: Colors.grey[300],
              title: Text('Beef Tenderloin'),
              secondary: Icon(
                Icons.add,
                size: 35.0,
                color: Colors.teal,
              ),
              contentPadding:
              EdgeInsets.symmetric(horizontal: 30.0, vertical: 0),
            ),
          ),
        ),
      ],
    );
  }
}
