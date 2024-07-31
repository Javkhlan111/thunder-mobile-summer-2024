import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  final String name;
  const PageTwo({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name, style: TextStyle(
          fontSize: 30,
          color: Colors.cyan
        ),),
      ),
      body: Container(
        child: Center(
          child: Text("My name is ${name}"),
        ),
      ),
    );
  }
}
