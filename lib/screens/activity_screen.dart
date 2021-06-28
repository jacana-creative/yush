import 'package:flutter/material.dart';

class ActivitiScreen extends StatefulWidget {
  @override
  _ActivitiScreenState createState() => _ActivitiScreenState();
}

class _ActivitiScreenState extends State<ActivitiScreen> {
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
      body: Center(
        child: Text('Activity'),
      ),
    );
  }
}
