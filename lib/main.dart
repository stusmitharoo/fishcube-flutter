import 'package:flutter/material.dart';

import './pages/home.dart';
import './pages/auth/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Fishcube App',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        primaryTextTheme: Typography(platform: TargetPlatform.iOS).black,
        textTheme: Typography(platform: TargetPlatform.iOS).black,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/login': (context) => Login(),
      },
    );
  }
}
