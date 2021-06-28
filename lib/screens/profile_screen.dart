import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yush/models/profile_model.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _selectedIndex = 0;
  List<Widget> _plans = [
    TextButton( 
      onPressed: () {},
      child: Column(
        children: [
          Text(
            '11',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600,),
          ),
          Text(
            'Cookbooks',
            style: TextStyle(color: Colors.black54),
          ),
        ],
      ),
    ),
    TextButton(
      onPressed: () {},
      child: Column(
        children: [
          Text(
            '11',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
          ),
          Text(
            'Meal Plans',
            style: TextStyle(color: Colors.black54),
          ),
        ],
      ),
    ),
    TextButton(
      onPressed: () {},
      child: Column(
        children: [
          Text(
            '197',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
          ),
          Text(
            'Recipes',
            style: TextStyle(color: Colors.black54),
          ),
        ],
      ),
    ),
  ];

  Widget _buildPlan(int index) {
    return Container(
      child: TextButton(
        child: _plans[index],
        onPressed: () {
          setState(() {
            _selectedIndex = index;
          });
          print(_selectedIndex);
        },
        style: ButtonStyle(
          foregroundColor: _selectedIndex == index ?  MaterialStateProperty.all
            (Colors.green) : MaterialStateProperty.all(Colors.grey),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
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
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 0.0),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTowV0YdzOlp5iXoAiR769dC8I1duXXw3pPQ&usqp=CAU"),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Username',
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.w600),
                        ),
                        Flexible(
                          child: Text(
                            'Mel helps families everywhere save their '
                            'sanity by making meal planning simple with'
                            ' easy',
                            style: TextStyle(
                              fontSize: 15.0,
                            ),
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 100.0,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Following',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                      ),
                    ),
                  ),
                  Text('1631 Followers'),
                  Text('9 Following'),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 1.0, vertical: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: _plans
                        .asMap()
                        .entries
                        .map((MapEntry map) => _buildPlan(map.key))
                        .toList(),
                  ),
                  Divider(),
                ],
              ),
            ),
            
          ],
        ));
  }
}
