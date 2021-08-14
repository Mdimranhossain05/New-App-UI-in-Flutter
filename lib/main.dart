import 'package:flutter/material.dart';
import 'package:news/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "News App",
      theme: ThemeData(primaryColor: Colors.white,accentColor: Colors.cyan[600]),
      home: HomePage(),
    );
  }
}
