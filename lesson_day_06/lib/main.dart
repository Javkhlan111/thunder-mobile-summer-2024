import 'package:flutter/material.dart';
import "package:lesson_day_06/my_fish.dart";
import 'package:lesson_day_06/my_paint.dart';

void main() {
  runApp(
    MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: PaintWidget(),
        )
      )
    )
  );
}

