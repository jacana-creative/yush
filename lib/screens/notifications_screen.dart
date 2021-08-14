import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Notifications', style: TextStyle(color: Colors.black),),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Center(
        child: Container(
          child: Text('You have no notifications at the moment'),
        ),
      ),
    );
  }
}
