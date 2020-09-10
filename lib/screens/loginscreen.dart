import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = '/login-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("login page")),
      body: Center(
        child: FlatButton(onPressed: () {}, child: Text("LOGIN PAGE HERE!")),
      ),
    );
  }
}
