import 'package:flutter/material.dart';
import 'gradient_letter.dart';
import 'package:project_one/pages/page_one.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 57,
      padding: const EdgeInsets.only(left: 0, right: 100),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

        // TextButton(
        //   onPressed: () {
        //     Navigator.of(context).push(
        //       MaterialPageRoute(builder: (context) => PageOne()),
        //     );
        //   },
        //   child: Image.asset("assets/images/previous 1.png",
        //       width: 32, height: 32),
        // ),
        TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => PageOne()),
              );
            },
            child: Image.asset("assets/images/previous 1.png",
                width: 32, height: 32)),
        SizedBox(
          width: 75,
        ),
        Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GradientLetter("W", 22.89, 22.89, 6.10, 3.05, 14.50),
                      SizedBox(
                        width: 3.81,
                      ),
                      GradientLetter("O", 22.89, 22.89, 6.10, 3.05, 14.50),
                      SizedBox(
                        width: 3.81,
                      ),
                      GradientLetter("R", 22.89, 22.89, 6.10, 3.05, 14.50),
                      SizedBox(
                        width: 3.81,
                      ),
                      GradientLetter("D", 22.89, 22.89, 6.10, 3.05, 14.50),
                      SizedBox(
                        width: 3.81,
                      ),
                    ]),
              ),
              SizedBox(
                width: 67.52,
                height: 18.39,
                child: Text(
                  'GAME',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFE76A01),
                    fontSize: 12.06,
                    fontFamily: 'Ribeye',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
