import 'package:flutter/material.dart';

class GradientLetter extends StatelessWidget{
  final String letter;
  final double width;
  final double height;
  final double borderRadius;
  final double innerRadius;
  final double fontSize;
  const GradientLetter(this.letter, this.width, this.height, this.borderRadius, this.innerRadius, this.fontSize, {super.key});

  @override
  Widget build(BuildContext context){
    return  Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Color(0xFFFF9002),
        borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
      ),
      child: Align(
          alignment: Alignment.center,
          child: FractionallySizedBox(
              widthFactor: 2 / 3,
              heightFactor: 2 / 3,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius:
                  BorderRadius.all(Radius.circular(innerRadius)),
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
                    letter.toUpperCase(),
                    style: TextStyle(
                      fontFamily: "Ribeye",
                      fontSize: fontSize,
                      color: Colors.white,
                      height: 1,
                    ),
                  ),
                ),
              ))),
    );
  }
}