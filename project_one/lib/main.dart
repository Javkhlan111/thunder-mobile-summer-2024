import 'package:flutter/material.dart';
import 'package:project_one/widgets/gradient_letter.dart';
import 'package:project_one/widgets/gradient_text.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                 image: AssetImage("assets/images/back1.png"),
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


              )),
        ),
      ),
    ),
  );
}
