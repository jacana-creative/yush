import 'package:flutter/material.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({Key? key}) : super(key: key);

  @override
  _UserProfileScreenState createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
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
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  void _openEndDrawer() {
    _scaffoldKey.currentState!.openEndDrawer();
  }

  void _closeEndDrawer() {
    Navigator.of(context).pop();
  }

  var follow = 'Follow';
  var following = 'Following';

  List<bool> _values = [true, false, true, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black,),
          backgroundColor: Colors.white,
          title: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(
                      Icons.arrow_back,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Yush!',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Billabong',
                    fontSize: 35.0,
                  ),
                ),
                Text('#', style: TextStyle(color: Colors.white),)
              ],
            ),
          ),
          actions: [
            Builder(
              builder: (context) => IconButton(
                icon: Icon(Icons.notifications_none_outlined),
                onPressed: () => Scaffold.of(context).openEndDrawer(),
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        endDrawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                leading: IconButton(onPressed: _closeEndDrawer, icon: Icon(Icons.clear),),
                title: Text('Benachrichtigungen', style: TextStyle(fontSize: 18.0),),
              ),
              ListTile(
                title: Text('Recipe', style: TextStyle(fontSize: 18.0),),
                trailing: Switch(value: _values[1], onChanged: null),
              ),
              ListTile(
                title: Text('Meal Plan', style: TextStyle(fontSize: 18.0),),
                trailing: Switch(value: _values[2], onChanged: null),
              ),
            ],
          ),
        ),

        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 0.0),
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 50.0,
                      backgroundImage: NetworkImage('https://freedesignfile'
                          '.com/upload/2017/05/Female-chef-Stock-Photo-01.jpg'),
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
                            'Michael Mayer',
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 5.0,),
                          Flexible(
                            child: Text(
                              'Michael helps families everywhere save their '
                                  'sanity by making meal planning simple with'
                                  ' easy',
                              style: TextStyle(
                                fontSize: 15.0,
                              ),
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          SizedBox(height: 5.0,),
                          Text(
                            'mayerkitchen.com',
                            style: TextStyle(
                              color: Colors.orangeAccent,
                              fontSize: 15.0,
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
                        onPressed: () {
                          setState(() {
                            if(follow != following) {
                              follow = 'Following';
                            }
                            else{follow = 'Follow';}
                          });
                        },
                        child: Text(
                          follow,
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
          ),
        ));
  }

}
