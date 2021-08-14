import 'package:flutter/material.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  bool _value = false;
  dynamic val = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Edit Profile',
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  child: Stack(
                    children: [
                      Container(
                        height: 120.0,
                        width: 100.0,
                        child: CircleAvatar(
                          backgroundColor: Colors.grey[400],
                          child: Icon(
                            Icons.person,
                            size: 100.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 70.0,
                        left: 60.0,
                        child: Container(
                          height: 40.0,
                          width: 40.0,
                          decoration: BoxDecoration(
                              color: Colors.blue[700],
                              borderRadius: BorderRadius.circular(20.0)),
                          child: Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Username',
                  labelStyle: TextStyle(color: Colors.grey),
                  hintText: '',
                ),
                onSaved: (input) {},
              ),
              Divider(
                thickness: 2,
                color: Colors.black,
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Display name',
                  labelStyle: TextStyle(color: Colors.grey),
                  hintText: '',
                ),
                onSaved: (input) {},
              ),
              Divider(
                thickness: 2,
                color: Colors.black,
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Bio',
                  labelStyle: TextStyle(color: Colors.grey),
                  hintText: '',
                ),
                onSaved: (input) {},
              ),
              Divider(
                thickness: 2,
                color: Colors.black,
              ),
              Text(
                'Gender',
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.grey),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Radio(
                            value: 1,
                            groupValue: val,
                            onChanged: (value) {
                              setState(() {
                                val = value;
                              });
                            }),
                        Text('Male'),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Radio(
                            value: 2,
                            groupValue: val,
                            onChanged: (value) {
                              setState(() {
                                val = value;
                              });
                            }),
                        Text('Female'),
                      ],
                    ),
                  ),
                ],
              ),
              Divider(
                thickness: 2,
                color: Colors.black,
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Age',
                  labelStyle: TextStyle(color: Colors.grey),
                  hintText: '',
                ),
                onSaved: (input) {},
              ),
              Divider(
                thickness: 2,
                color: Colors.black,
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Email',
                  labelStyle: TextStyle(color: Colors.grey),
                  hintText: '',
                ),
                onSaved: (input) {},
              ),
              Divider(
                thickness: 2,
                color: Colors.black,
              ),
              Center(
                child: TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text('Update', style: TextStyle(color: Colors.white),),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
