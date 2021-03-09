import 'package:flutter/material.dart';
import 'package:mini_project1/screens/home_screen.dart';
import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Green Glow',
      // //home: Scaffold(
      //     appBar: AppBar(
      //       title: Text('Shopping App'),
      //     ),
      //     body: Center(
      //       child: Text('Feed those curls'),
      //     )),
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}
