import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project_two/pages/loginPage.dart';
import '../pages/register.dart';
import 'firebase_options.dart';


Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(
    home: Scaffold(
      body: SafeArea(
        child: LoginPage(),

      ),
    ),
  ),
  );
}