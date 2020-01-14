import 'package:flutter/material.dart';
import 'package:mobile/pages/login-page.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'bumpR',
      home: new Scaffold(
        backgroundColor: Colors.orange,
        body: LoginPage(),
      )
    );
  }
}