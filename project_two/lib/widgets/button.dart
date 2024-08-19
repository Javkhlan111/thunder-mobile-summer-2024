import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final String buttonText;
  const Button(this.buttonText, {super.key});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 343,
        height: 45,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFE76A01), Color(0xFFF99440)],
            begin: Alignment(1, 0.02),
            end: Alignment(-1, -0.02),
          ),
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        child: TextButton(
          onPressed: () {
            //changePage(context);
          },
          child: Text(
            widget.buttonText,
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'Rubik',
              fontWeight: FontWeight.w400,
              height: 0,
              color: Colors.white,
            ),
          ),
          style: TextButton.styleFrom(),
        ));
  }
}
