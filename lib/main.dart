import 'package:flutter/material.dart';
import 'package:st_stor_ecommers/scrrens/sign_Up.dart';
import 'package:st_stor_ecommers/scrrens/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Sign_Up(),
      debugShowCheckedModeBanner: false,
    );
  }
}
