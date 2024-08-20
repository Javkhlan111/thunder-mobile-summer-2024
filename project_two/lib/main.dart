import 'package:flutter/material.dart';
import '../pages/register.dart';


void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: SafeArea(
        child: RegisterPage(),

      ),
    ),
  ),
  );
}