import 'package:flutter/material.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'login_screen.dart';
import '../amplifyconfiguration.dart';

class EntryScreen extends StatefulWidget {
  const EntryScreen({Key? key}) : super(key: key);

  @override
  _EntryScreenState createState() => _EntryScreenState();
}


class _EntryScreenState extends State<EntryScreen> {
  bool _amplifyConfigured = false;

  @override
  void initState() {
    super.initState();
    _configureAmplify();
  }

  void _configureAmplify() async {
    final auth = AmplifyAuthCognito();

    try {
      Amplify.addPlugins([auth]);

      await Amplify.configure(amplifyconfig);


    } on AmplifyAlreadyConfiguredException catch(e) {
      print(e);
    } finally {
      setState(() {
        _amplifyConfigured = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: _amplifyConfigured ? LoginScreen() : CircularProgressIndicator(),
      ),
    );
  }
}
