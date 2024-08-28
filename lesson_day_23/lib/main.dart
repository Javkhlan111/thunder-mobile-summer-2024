import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:lesson_day_23/firebase_options.dart';
import 'package:lesson_day_23/responsive/responsive_layout_screen.dart';
import 'package:lesson_day_23/responsive/web_screen_layout.dart';
import 'package:lesson_day_23/screens/sign_up_screen.dart';
import 'responsive/mobile_screen_layout.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: "Lesson_day_23",
        theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: Colors.white60),
        home: SignUpScreen()
    //     ResponsiveLayoutScreen(webScreenLayout: WebScreenLayout(),
    // mobileScreenLayout: MobileScreenLayout()),
      );

  }
}

