import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';

class SignupScreen extends StatefulWidget {
  static final String id = 'signup_screen';

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();
  dynamic val = -1;
  DateTime selectedDate = DateTime.now();
  late String _firstName, _lastName, _email, _password, _userName;

  _submit() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      print(_firstName);
      print(_lastName);
      print(_email);
      print(_password);
      print(_userName);
      print(selectedDate);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            // height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Yush!',
                  style: TextStyle(
                    fontFamily: 'Billabong',
                    fontSize: 50.0,
                  ),
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 10.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            labelText: 'Username *',
                          ),
                          validator: (input) => input!.trim().isEmpty
                              ? 'Please '
                                  'enter a valid Name'
                              : null,
                          onSaved: (input) => _userName = input!,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 10.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            labelText: 'Email *',
                          ),
                          validator: (input) => input!.contains('@')
                              ? 'Please '
                                  'enter a valid email'
                              : null,
                          onSaved: (input) => _email = input!,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 10.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            labelText: 'First name *',
                          ),
                          validator: (input) => input!.trim().isEmpty
                              ? 'Please '
                                  'enter a valid Name'
                              : null,
                          onSaved: (input) => _firstName = input!,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 10.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            labelText: 'Last name',
                          ),
                          validator: (input) => input!.trim().isEmpty
                              ? 'Please '
                                  'enter a valid Name'
                              : null,
                          onSaved: (input) => _lastName = input!,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 10.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            labelText: 'Password',
                          ),
                          validator: (input) => input!.length < 6
                              ? 'Must be '
                              'atleast 6 characters'
                              : null,
                          onSaved: (input) => _email = input!,
                          obscureText: true,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 10.0),
                        child: Row(
                          children: [
                            Text(
                              'Gender',
                              textAlign: TextAlign.left,
                              style:
                                  TextStyle(
                                      color: Colors.grey[600],
                                      fontSize: 18.0,
                                  ),
                            ),
                          ],
                        ),
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
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 10.0),
                        child: Row(
                          children: [
                            Text(
                              'Date of Birth',
                              textAlign: TextAlign.left,
                              style:
                              TextStyle(
                                color: Colors.grey[600],
                                fontSize: 18.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 200,
                        child: CupertinoDatePicker(
                          mode: CupertinoDatePickerMode.date,
                          initialDateTime: DateTime(1969, 1, 1),
                          onDateTimeChanged: (DateTime newDateTime) {
                            // Do something
                          },
                        ),
                      ),
                      
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        width: 250.0,
                        child: TextButton(
                          onPressed: _submit,
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            padding: EdgeInsets.all(10.0),
                          ),
                          child: Text(
                            'Sign up',
                            style: TextStyle(color: Colors.white, fontSize: 18.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        width: 250.0,
                        child: FlatButton(
                          onPressed: () => Navigator.pop(context),
                          color: Colors.blue,
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            'Back to Login',
                            style: TextStyle(color: Colors.white, fontSize: 18.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
