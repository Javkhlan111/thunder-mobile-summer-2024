import "package:flutter/material.dart" ;

class GradientText extends StatelessWidget{
  final String text;
  final double fontSize;
  const GradientText(this.text, this.fontSize, {super.key});

  @override
  Widget build (BuildContext context){
    return Text(
      text,
      style: TextStyle(
          fontSize: fontSize,
          fontFamily: "Ribeye",
          foreground: Paint()
            ..shader = LinearGradient(
              colors: const [
                Color(0xFFFA9541),
                Color(0xFFE8B02),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [25.0, 0.661,],
              transform: const GradientRotation(8.82),
            ).createShader(
              const Rect.fromLTWH(0,0, 200, 70),
            )
      ),
    );
  }
}







