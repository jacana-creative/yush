import 'package:flutter/material.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:yush/screens/home_screen.dart';

class ConfirmScreen extends StatefulWidget {
  final LoginData data;
  const ConfirmScreen({Key? key, required this.data}) : super(key: key);

  @override
  _ConfirmScreenState createState() => _ConfirmScreenState();
}

class _ConfirmScreenState extends State<ConfirmScreen> {
  final _controller = TextEditingController();
  bool _isEnabled = false;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        _isEnabled = _controller.text.isNotEmpty;
      });
    });
  }

  void _verifyCode(BuildContext context, LoginData data, String code) async {
    try {
      final res = await Amplify.Auth.confirmSignUp(username: data.name,
          confirmationCode: code);

      if (res.isSignUpComplete) {
        // Login User
        final user = await Amplify.Auth.signIn(
            username: data.name,
            password: data.password,
        );

        if (user.isSignedIn) {
          Navigator.pushReplacement(context, MaterialPageRoute(builder:
              (BuildContext context) => HomeScreen()));
        }

      }
    } on AuthException catch(e) {}
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
          child: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Card(
              elevation: 12.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              margin: EdgeInsets.all(30.0),
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10.0,
                    ),
                    TextField(
                      controller: _controller,
                      decoration: InputDecoration(
                          filled: true,
                          contentPadding: EdgeInsets.symmetric(vertical: 4),
                          prefixIcon: Icon(Icons.lock),
                          labelText: 'Enter Confirmation Code',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40.0),
                          )),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    MaterialButton(
                      onPressed: _isEnabled ? () {
                        _verifyCode(context, widget.data, _controller.text);
                      } : null,
                      elevation: 4,
                      color: Theme.of(context).primaryColor,
                      disabledColor: Colors.blue.shade200,
                      child: Text(
                        'VERIFY',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      child: Text(
                        'Resend Code',
                        style: TextStyle(color: Colors.grey),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
