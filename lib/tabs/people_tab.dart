import 'package:flutter/material.dart';
import 'package:yush/screens/user_profile_screen.dart';

class PeopleTab extends StatefulWidget {
  const PeopleTab({Key? key}) : super(key: key);

  @override
  _PeopleTabState createState() => _PeopleTabState();
}

class _PeopleTabState extends State<PeopleTab> {
  TextEditingController _searchController = TextEditingController();

  _clearSearch() {
    _searchController.clear();
  }
  var follow = 'Follow';
  var following = 'Following';

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
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
                        borderSide: const BorderSide(color: Colors.grey, width: 0.0),
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                      border: OutlineInputBorder(),
                      hintText: 'Search Users',
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

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => UserProfileScreen(),
                            ),
                          ),
                          child: Container(
                            height: 150.0,
                            width: 150.0,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQm6pZZCNmfzQgN_gsJhf8lWWUI3zxC1u-vJA&usqp=CAU'),
                            ),
                          ),
                        ),
                        Text('Mels Kitchen Cafe'),
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            minimumSize: Size(150.0, 40.0),
                            backgroundColor: Colors.grey[100],
                          ),

                          onPressed: () {
                            setState(() {
                              if(follow != following) {
                                follow = 'Following';
                              }
                              else{follow = 'Follow';}
                            });
                          },
                          child: Text(follow,
                            style: TextStyle(color: Colors.grey[600]),),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => UserProfileScreen(),
                            ),
                          ),
                          child: Container(
                            height: 150.0,
                            width: 150.0,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQm6pZZCNmfzQgN_gsJhf8lWWUI3zxC1u-vJA&usqp=CAU'),
                            ),
                          ),
                        ),
                        Text('Mels Kitchen Cafe'),
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            minimumSize: Size(150.0, 40.0),
                            backgroundColor: Colors.grey[100],
                          ),

                          onPressed: () {
                            setState(() {
                              if(follow != following) {
                                follow = 'Following';
                              }
                              else{follow = 'Follow';}
                            });
                          },
                          child: Text(follow,
                            style: TextStyle(color: Colors.grey[600]),),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Container(
                          height: 150.0,
                          width: 150.0,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQm6pZZCNmfzQgN_gsJhf8lWWUI3zxC1u-vJA&usqp=CAU'),
                          ),
                        ),
                        Text('Mels Kitchen Cafe'),
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            minimumSize: Size(150.0, 40.0),
                            backgroundColor: Colors.grey[100],
                          ),
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => UserProfileScreen(),
                            ),
                          ),
                          child: Text('Following',
                            style: TextStyle(color: Colors.grey[600]),),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          height: 150.0,
                          width: 150.0,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQm6pZZCNmfzQgN_gsJhf8lWWUI3zxC1u-vJA&usqp=CAU'),
                          ),
                        ),
                        Text('Mels Kitchen Cafe'),
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            minimumSize: Size(150.0, 40.0),
                            backgroundColor: Colors.grey[100],
                          ),
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => UserProfileScreen(),
                            ),
                          ),
                          child: Text('Following',
                            style: TextStyle(color: Colors.grey[600]),),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Container(
                          height: 150.0,
                          width: 150.0,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQm6pZZCNmfzQgN_gsJhf8lWWUI3zxC1u-vJA&usqp=CAU'),
                          ),
                        ),
                        Text('Mels Kitchen Cafe'),
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            minimumSize: Size(150.0, 40.0),
                            backgroundColor: Colors.grey[100],
                          ),
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => UserProfileScreen(),
                            ),
                          ),
                          child: Text('Following',
                            style: TextStyle(color: Colors.grey[600]),),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          height: 150.0,
                          width: 150.0,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQm6pZZCNmfzQgN_gsJhf8lWWUI3zxC1u-vJA&usqp=CAU'),
                          ),
                        ),
                        Text('Mels Kitchen Cafe'),
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            minimumSize: Size(150.0, 40.0),
                            backgroundColor: Colors.grey[100],
                          ),
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => UserProfileScreen(),
                            ),
                          ),
                          child: Text('Following',
                            style: TextStyle(color: Colors.grey[600]),),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Container(
                          height: 150.0,
                          width: 150.0,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQm6pZZCNmfzQgN_gsJhf8lWWUI3zxC1u-vJA&usqp=CAU'),
                          ),
                        ),
                        Text('Mels Kitchen Cafe'),
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            minimumSize: Size(150.0, 40.0),
                            backgroundColor: Colors.grey[100],
                          ),
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => UserProfileScreen(),
                            ),
                          ),
                          child: Text('Following',
                            style: TextStyle(color: Colors.grey[600]),),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          height: 150.0,
                          width: 150.0,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQm6pZZCNmfzQgN_gsJhf8lWWUI3zxC1u-vJA&usqp=CAU'),
                          ),
                        ),
                        Text('Mels Kitchen Cafe'),
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            minimumSize: Size(150.0, 40.0),
                            backgroundColor: Colors.grey[100],
                          ),
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => UserProfileScreen(),
                            ),
                          ),
                          child: Text('Following',
                            style: TextStyle(color: Colors.grey[600]),),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      )
    );
  }
}
