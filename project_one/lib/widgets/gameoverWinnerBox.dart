import 'package:flutter/material.dart';
import 'gradient_text.dart';
import "gradient_letter.dart";
import "package:project_one/pages/page_one.dart";
import "";

Future<void> gameOverWinnerDialog(BuildContext context, message, button) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        insetPadding: EdgeInsets.all(30),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.0))),
        content: SizedBox(
          width: 296,
          height: 130,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 24,
                    height: 24,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.all(0),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Image.asset("assets/images/exit.png"),

                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: SizedBox(
                  width: 250,

                  child: GradientText(message, 30),
                ),
              )
            ],
          ),
        ),
        // contentPadding:
        // EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
        // // EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 16),
        // actionsPadding:
        // EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
        // //EdgeInsets.only(left: 24, right: 24, top: 0, bottom: 24),
        actions: <Widget>[
          SizedBox(
            height: 45,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 256,
                  height: 45,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color(0xFFE76A01),
                            Color(0xFFF99440),
                          ]
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => PageOne()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                      ),
                      child: Text(
                        button,
                        style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          height: 0
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    },
  );
}
