import 'package:filterapp/home.dart';
import 'package:filterapp/search.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Filter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Search(),
    );
  }
}
