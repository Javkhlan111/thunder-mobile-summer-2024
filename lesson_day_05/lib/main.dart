import 'package:flutter/material.dart';
import 'package:lesson_day_05/page_one.dart';
import 'package:lesson_day_05/page_two.dart';


void main() {
  runApp(
    MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: PageOne(),
        ),
      )
    )
  );
}
