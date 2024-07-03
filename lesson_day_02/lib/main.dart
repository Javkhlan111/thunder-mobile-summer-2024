import 'package:flutter/material.dart';

class MyFirstApp {
  String name;

  MyFirstApp({required this.name});
}

void main() {

  MyFirstApp myApp = MyFirstApp(name:'Super Duper App');

  runApp(MaterialApp(
    home: Text(myApp.name),
  ));

}

