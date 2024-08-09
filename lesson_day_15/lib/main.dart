import 'package:flutter/material.dart';
import 'e_commerce_screen_before.dart';
import 'package:lesson_day_15/e_commerce_screen_before.dart';

void main() {
  runApp( StaticApp());
}

class StaticApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return
        MaterialApp(
            theme: ThemeData(
              brightness: Brightness.light,
              primaryColor: Colors.green,
              appBarTheme: AppBarTheme(
                elevation: 10,
                titleTextStyle:
                  TextStyle(fontFamily: "LeckerliOne", fontSize: 24)
              )
            ),
            home: ECommerceScreen());
  }
}

