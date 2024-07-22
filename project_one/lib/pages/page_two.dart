import 'package:flutter/material.dart';
import 'package:project_one/widgets/input.dart';
import '../widgets/bar.dart';
import '../widgets/gradient_letter.dart';
import '../widgets/gradient_text.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/back2.png"),
          fit: BoxFit.cover,
        )),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NavBar(),

            Image.asset("assets/images/icodeGuyHead.png"),
            SizedBox(height: 14,),
            GradientText("Player name", 25),
            SizedBox(height: 33),

            Input(),
          ],
        ));
  }
}
