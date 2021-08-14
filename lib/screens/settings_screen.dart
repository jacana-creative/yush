import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yush/screens/login_screen.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Settings',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.0),
          child: Column(
            children: [
              SizedBox(height: 10.0,),
              ListTile(
                tileColor: Colors.white,
                leading: Icon(FontAwesomeIcons.heart, color: Colors.teal,),
                title: Text('Invite Family & Friends', style: TextStyle
                  (fontWeight: FontWeight.w500),),
                subtitle: Text('Share the love'),
              ),
              SizedBox(height: 10.0,),
              ListTile(
                tileColor: Colors.white,
                leading: Icon(FontAwesomeIcons.tachometerAlt, color: Colors.teal,),
                title: Text('Language and Design', style: TextStyle
                  (fontWeight: FontWeight.w500),),
                subtitle: Text('Manage language and design'),
              ),
              SizedBox(height: 10.0,),
              ListTile(
                tileColor: Colors.white,
                leading: Icon(Icons.info_outline, color: Colors.teal,),
                title: Text('About Yush!', style: TextStyle
                  (fontWeight: FontWeight.w500),),
              ),
              SizedBox(height: 10.0,),
              ListTile(
                tileColor: Colors.white,
                leading: Icon(Icons.logout, color: Colors.teal,),
                title: Text('Logout', style: TextStyle
                  (fontWeight: FontWeight.w500),),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
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
