import 'package:flutter/material.dart';
import 'package:scool/screens/loginscreen.dart';
import 'screens/walkthrough.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scool',
      theme: ThemeData(
          primaryColor: Color.fromRGBO(243, 22, 77, 1),
          accentColor: Colors.white,
          textTheme: TextTheme(
            headline1: TextStyle(
                color: Colors.white,
                fontFamily: 'Montserrat',
                fontSize: 30,
                fontWeight: FontWeight.w900),
            bodyText1: TextStyle(
                color: Colors.grey[800],
                fontFamily: 'Montserrat',
                fontSize: 18,
                fontWeight: FontWeight.w400),
            bodyText2: TextStyle(
                color: Colors.black,
                fontFamily: 'Montserrat',
                fontSize: 15,
                fontWeight: FontWeight.w500,
                decorationThickness: 20),
          )),
      home: WalkthroughScreen(),
      routes: {
        LoginScreen.routeName: (ctx) => LoginScreen(),
      },
    );
  }
}
