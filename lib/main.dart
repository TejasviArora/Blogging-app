import 'package:blogging_app/user_profile.dart';
import 'package:flutter/material.dart';
import 'package:blogging_app/welcome_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Product Sans',
        primarySwatch: Colors.blue,
      ),
      home: WelcomePage(),
    );
  }
}
