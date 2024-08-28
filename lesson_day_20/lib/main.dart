import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(
    home: Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white54,
          ),
          width: double.infinity,
          child: Column(
            children: [
          Text(
            'Hello',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 35.53,
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
          ]
        ),

      ),
    ),
  ),
  )
  );
}


// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.white30),
//         useMaterial3: true,
//       ),
//     );
//   }
// }
//
