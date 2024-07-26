import 'package:flutter/material.dart';
import 'gradient_letter.dart';
import 'gradient_text.dart';

class Keyboard extends StatelessWidget {
  const Keyboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          width: double.infinity,
          height: 230,
          padding: const EdgeInsets.only(top: 24, left: 27.03, right: 27.03),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
              ),
            ),
            shadows: [
              BoxShadow(
                color: Color(0x196A4423),
                blurRadius: 100,
                offset: Offset(0, 4),
                spreadRadius: 0,
              )
            ],
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GradientLetter("A", 42, 42, 10.92, 5.46, 25.93),
                  GradientLetter("E", 42, 42, 10.92, 5.46, 25.93),
                  GradientLetter("T", 42, 42, 10.92, 5.46, 25.93),
                  GradientLetter("I", 42, 42, 10.92, 5.46, 25.93),
                  GradientLetter("P", 42, 42, 10.92, 5.46, 25.93),
                  GradientLetter("M", 42, 42, 10.92, 5.46, 25.93),
                  GradientLetter("O", 42, 42, 10.92, 5.46, 25.93),
                ],
              ),
              SizedBox(height: 7),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GradientLetter("Y", 42, 42, 10.92, 5.46, 25.93),
                  GradientLetter("C", 42, 42, 10.92, 5.46, 25.93),
                  GradientLetter("B", 42, 42, 10.92, 5.46, 25.93),
                  GradientLetter("K", 42, 42, 10.92, 5.46, 25.93),
                  GradientLetter("N", 42, 42, 10.92, 5.46, 25.93),
                  GradientLetter("I", 42, 42, 10.92, 5.46, 25.93),
                  GradientLetter("E", 42, 42, 10.92, 5.46, 25.93),
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 16, left: 10)),
              Row(
                children: [
                  Container(
                    width: 78,
                    height: 35,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0x3AE76A01)),
                          borderRadius: BorderRadius.circular(10.92)),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/reload.png",
                          width: 18,
                          height: 18,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          "abc",
                          style: TextStyle(
                              color: Color(0xFFFF9002),
                              fontSize: 20,
                              fontFamily: "Nunito",
                              fontWeight: FontWeight.w600,
                              height: 0),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          )),
    ]);
  }
}
