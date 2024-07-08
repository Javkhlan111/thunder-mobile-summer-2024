import 'package:flutter/material.dart';

class GradientLetter extends StatelessWidget{
  final String letter;
  const GradientLetter(this.letter, {super.key});

  @override
  Widget build(BuildContext context){
    return  Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: Color(0xFFFF9002),
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: Align(
          alignment: Alignment.center,
          child: FractionallySizedBox(
              widthFactor: 2 / 3,
              heightFactor: 2 / 3,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius:
                  BorderRadius.all(Radius.circular(8)),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFFE48000),
                      Color(0xFFFF9002)
                    ],
                    begin: Alignment(0, -1),
                    end: Alignment(0, 1),
                  ),
                ),
                child: Center(
                  child: Text(
                    letter,
                    style: TextStyle(
                      fontFamily: "Ribeye",
                      fontSize: 38,
                      color: Colors.white,
                      height: 1,
                    ),
                  ),
                ),
              ))),
    );
  }
}