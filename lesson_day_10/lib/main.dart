import 'package:flutter/material.dart';
import 'basic_screen.dart';
import 'profile_screen.dart';
import 'flex_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Layouts',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: ProfileScreen());
  }
}


void main() {
  runApp(const MaterialApp(
    home: FlexScreen(),
  ));
}