import 'package:course/screens/home/class/Note.dart';
import 'package:course/screens/home/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'ceraRegular',
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}