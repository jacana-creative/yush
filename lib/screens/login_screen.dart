import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yush/screens/signup_screen.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import '../amplifyconfiguration.dart';

class LoginScreen extends StatefulWidget {

  static final String id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late LoginData _data;

  // final _formKey = GlobalKey<FormState>();
  // late String _email, _password;

  Future<String?> _onLogin(BuildContext context, LoginData data) async {
     print(data);
  }

  Future<String?> _onSignup(BuildContext context, LoginData data) async {
    try {
      await Amplify.Auth.signUp(
          username: data.name,
          password: data.password,
        options: CognitoSignUpOptions(
          userAttributes: {
            'email': data.name,
          }
        ),
      );
      _data = data;
    } on AuthException catch(e) {
      // for (final err in e.exceptionList) {
      //
      // }
      return '${e.message} - ${e.recoverySuggestion}';
    }
  }

  // _submit() {
  //   if (_formKey.currentState!.validate()) {
  //     _formKey.currentState!.save();
  //     print(_email);
  //     print(_password);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      title: 'Yush!',
        onSignup: (LoginData data) => _onSignup(context, data),
        onLogin: (LoginData data) => _onLogin(context, data),
        onRecoverPassword: (_) => Future.value(''),
        onSubmitAnimationCompleted: () {
        Navigator.of(context).pushReplacementNamed('/confirm', arguments:
        _data);
        },
    );
  }
}

// Scaffold(
// body: SingleChildScrollView(
// child: Container(
// height: MediaQuery.of(context).size.height,
// child: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// crossAxisAlignment: CrossAxisAlignment.center,
// children: [
// Text(
// 'Yush!',
// style: TextStyle(
// fontFamily: 'Billabong',
// fontSize: 50.0,
// ),
// ),
// Form(
// key: _formKey,
// child: Column(
// mainAxisSize: MainAxisSize.min,
// children: [
// Padding(
// padding:
// EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
// child: TextFormField(
// decoration: InputDecoration(
// border: OutlineInputBorder(
// borderRadius: BorderRadius.circular(10.0),
// ),
// prefixIcon: Icon(Icons.email),
// labelText: 'Email',
// ),
// validator: (input) => input!.contains('@')
// ? 'Please '
// 'enter a valid email'
// : null,
// onSaved: (input) => _email = input!,
// ),
// ),
// Padding(
// padding:
// EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
// child: TextFormField(
// decoration: InputDecoration(
// border: OutlineInputBorder(
// borderRadius: BorderRadius.circular(10.0),
// ),
// prefixIcon: Icon(Icons.https),
// labelText: 'Password',
// ),
// validator: (input) => input!.length < 6
// ? 'Must be '
// 'atleast 6 characters'
//     : null,
// onSaved: (input) => _password = input!,
// obscureText: true,
// ),
// ),
// SizedBox(
// height: 20.0,
// ),
// TextButton(
// style: OutlinedButton.styleFrom(
// fixedSize: Size(250, 50),
// backgroundColor: Colors.blue,
// padding: EdgeInsets.all(10.0),
// ),
// onPressed: _submit,
// child: Text(
// 'Login',
// style: TextStyle(color: Colors.white, fontSize: 18.0),
// ),
// ),
// SizedBox(height: 20.0,),
// Text('Forgot your password?', style: TextStyle(color:
// Colors.red),
// ),
// SizedBox(height: 20.0,),
// TextButton(
// style: OutlinedButton.styleFrom(
// fixedSize: Size(250, 50),
// backgroundColor: Colors.blue
// ),
// child: Row(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// Icon(FontAwesomeIcons.linkedin, color: Colors.white,),
// SizedBox(width: 10.0,),
// Text('Login with Linkedin', style: TextStyle(color: Colors.white, fontSize: 18.0),),
// ],
// ),
// onPressed: null,
// ),
// SizedBox(height: 10.0,),
// TextButton(
// style: OutlinedButton.styleFrom(
// fixedSize: Size(250, 50),
// backgroundColor: Colors.red
// ),
// child: Row(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// Icon(FontAwesomeIcons.google, color: Colors.white,),
// SizedBox(width: 10.0,),
// Text('Login with Google', style: TextStyle(color:
// Colors.white, fontSize: 18.0),),
// ],
// ),
// onPressed: null,
// ),
// SizedBox(height: 10.0,),
// TextButton(
// style: OutlinedButton.styleFrom(
// fixedSize: Size(250, 50),
// backgroundColor: Colors.grey[200]
// ),
// child: Row(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// Icon(FontAwesomeIcons.apple, color: Colors.black,),
// SizedBox(width: 10.0,),
// Text('Login with Apple', style: TextStyle(color:
// Colors.black, fontSize: 18.0),),
// ],
// ),
// onPressed: null,
// ),
// SizedBox(height: 20.0,),
// TextButton(
// onPressed: () => Navigator.pushNamed(context, SignupScreen.id),
// child: Text(
// 'Go to Signup',
// style: TextStyle(color: Colors.blue, fontSize: 18.0),
// ),
// ),
// ],
// ),
// ),
// ],
// ),
// ),
// ),
// );