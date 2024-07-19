import 'package:flutter/material.dart';

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
            )
        ),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GradientLetter("W"),
                SizedBox(width: 10,),
                GradientLetter("O"),
                SizedBox(width: 10,),
                GradientLetter("R"),
                SizedBox(width: 10,),
                GradientLetter("D"),
                SizedBox(width: 10,),


              ],
            ),
            GradientText("Game", 38),
            Image.asset("assets/images/icodeGuy.png"),
            SizedBox(height: 20,),
            GradientText("Ready", 25),
            SizedBox(height: 20,),

            Container(
                width: 310,
                height: 60,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFFE76A01), Color(0xFFF99440)],
                    begin: Alignment(1, 0.02),
                    end: Alignment(-1, -0.02),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
                child: TextButton(
                  onPressed: (){},
                  child: Text("PLAY", style: TextStyle(fontSize: 24, color: Colors.white),),
                  style: TextButton.styleFrom(),

                )

            ),


          ],


        ))
    ;
  }
}
