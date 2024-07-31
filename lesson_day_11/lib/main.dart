import 'package:flutter/material.dart';
import 'pages/page_one.dart';
import 'pages/page_two.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: SafeArea(
        child: PageOne(),

      ),
    ),
  ),
  );
}
