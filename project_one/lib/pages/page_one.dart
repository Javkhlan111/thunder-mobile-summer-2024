import 'package:flutter/material.dart';
import 'page_two.dart';
import '../widgets/gradient_letter.dart';
import '../widgets/gradient_text.dart';
class PageOne extends StatelessWidget {
  const PageOne({super.key});
  void changePage(BuildContext context){
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => PageTwo()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  GradientLetter("W", 60, 60, 1, 8, 38),
                  SizedBox(width: 10,),
                  GradientLetter("O", 60, 60, 1, 8, 38),
                  SizedBox(width: 10,),
                  GradientLetter("R", 60, 60, 1, 8, 38),
                  SizedBox(width: 10,),
                  GradientLetter("D", 60, 60, 1, 8, 38),
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
                    onPressed: (){
                      changePage(context);
                    },
                    child: Text("PLAY", style: TextStyle(fontSize: 24, color: Colors.white),),
                    style: TextButton.styleFrom(),

                  )

              ),


            ],


          )),
      ),);
  }
}
