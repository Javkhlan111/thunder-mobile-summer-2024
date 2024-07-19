import 'package:flutter/material.dart';
import 'package:project_one/pages/page_one.dart';
import 'package:project_one/widgets/gradient_letter.dart';
import 'package:project_one/widgets/gradient_text.dart';

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
