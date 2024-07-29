import 'package:flutter/material.dart';
import 'package:project_one/widgets/modal.dart';
import '../widgets/gradient_letter.dart';
import '../widgets/gradient_text.dart';
import '../widgets/keyboard.dart';

class PageFour extends StatefulWidget {
  const PageFour({super.key});

  @override
  State<PageFour> createState() => _PageFourState();
}

class _PageFourState extends State<PageFour> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/images/back2.png"),
        fit: BoxFit.cover,
      )),
      width: double.infinity,
      child: Column(children: [
        SizedBox(
          height: 12,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.00,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                child: Image.asset("assets/images/exit.png",
                    width: 32, height: 32),
                onPressed: (){
                  exitDialog(context, "ARE YOU SURE TO QUIT?", "Yes", "No");
                },
              ),
              Center(
                child: SizedBox(
                  width: 64,
                  height: 57,
                  child: Center(
                    child: Text(
                      'SRA',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFE76A01),
                        fontSize: 24,
                        fontFamily: 'Ribeye',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Image.asset("assets/images/trophy 1.png",
                      width: 24, height: 24),
                  SizedBox(
                    width: 25,
                    height: 33,
                    child: Text(
                      '1',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFE76A01),
                        fontSize: 20,
                        fontFamily: 'Ribeye',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 9,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/orange.png", width: 25, height: 25),
            SizedBox(
              width: 5,
            ),
            Image.asset("assets/images/orange.png", width: 25, height: 25),
            SizedBox(
              width: 5,
            ),
            Image.asset("assets/images/orange.png", width: 25, height: 25),
            SizedBox(
              width: 5,
            ),
            Image.asset("assets/images/orange.png", width: 25, height: 25),
            SizedBox(
              width: 5,
            ),
            Image.asset("assets/images/orange.png", width: 25, height: 25),
          ],
        ),
        SizedBox(
          height: 31,
        ),
        SizedBox(
          width: 68,
          height: 33,
          child: Text(
            '2/10',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFFFF9002),
              fontSize: 20,
              fontFamily: 'Ribeye',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
        ),
        SizedBox(
          height: 4,
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //SizedBox(width: 5,),
            Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/previous 1.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),

            Container(
              width: 265,
              height: 263,
              decoration: ShapeDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/elsa.png"),
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 0.96, color: Color(0xFFE76A01)),
                  borderRadius: BorderRadius.circular(22.95),
                ),
              ),
            ),
            Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/next.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 27,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GradientLetter("", 43, 43, 9.4, 6.8, 0),
            SizedBox(
              width: 7.17,
            ),
            GradientLetter("", 43, 43, 9.4, 6.8, 0),
            SizedBox(
              width: 7.17,
            ),
            GradientLetter("", 43, 43, 9.4, 6.8, 0),
            SizedBox(
              width: 7.17,
            ),
            GradientLetter("", 43, 43, 9.4, 6.8, 0),
            SizedBox(
              width: 7.17,
            ),
          ],
        ),
        SizedBox(
          height: 11.5,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset("assets/images/hint.png", width: 16, height: 16),
          SizedBox(
            width: 45,
            height: 19,
            child: Text(
              'Hint',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFFE76A01),
                fontSize: 16,
                fontFamily: 'Comfortaa',
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.underline,
                decorationColor: Color(0xFFE76A01),
                height: 0,
              ),
            ),
          ),
        ]),
        SizedBox(
          height: 57,
        ),
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
                    GradientLetter("R", 42, 42, 10.92, 5.46, 25.93),
                    GradientLetter("E", 42, 42, 10.92, 5.46, 25.93),
                    GradientLetter("T", 42, 42, 10.92, 5.46, 25.93),
                    GradientLetter("I", 42, 42, 10.92, 5.46, 25.93),
                    GradientLetter("P", 42, 42, 10.92, 5.46, 25.93),
                    GradientLetter("S", 42, 42, 10.92, 5.46, 25.93),
                    GradientLetter("O", 42, 42, 10.92, 5.46, 25.93),
                  ],
                ),
                SizedBox(height: 7),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GradientLetter("Y", 42, 42, 10.92, 5.46, 25.93),
                    GradientLetter("A", 42, 42, 10.92, 5.46, 25.93),
                    GradientLetter("B", 42, 42, 10.92, 5.46, 25.93),
                    GradientLetter("L", 42, 42, 10.92, 5.46, 25.93),
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
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 1, color: Color(0x3AE76A01)),
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
        /////////KKEEYYBOARD
      ]),
    );
    ;
  }
}
