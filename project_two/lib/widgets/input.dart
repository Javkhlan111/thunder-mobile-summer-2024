import 'package:flutter/material.dart';

class Input extends StatefulWidget {
  final String hintText;
  const Input(this.hintText, {super.key});

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  String inputText = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343,
      height: 45,
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      child: TextField(
        controller: TextEditingController(),
        cursorColor: Color(0xFFA0A0A0),
        style: TextStyle(
           color: Color(0xFFA0A0A0),
            fontFamily: 'Rubik',
            fontSize: 18,
            fontWeight: FontWeight.w400,
            height: 0,
        ),
            decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                        width: 1,
                        color: Colors.white.withOpacity(0.20000000298023224),
            ),),
            hintText: widget.hintText,
            hintStyle: TextStyle(
              color: Color(0xFFA0A0A0),
              fontSize: 18,
              fontFamily: "Rubik",
              fontWeight: FontWeight.w400,
              height: 0,
            ),
            filled: true,
            fillColor: Color(0xFF111111),
            ),
        onSubmitted: (text) {
          setState(() {
            inputText = text;

          });
        },
      ),
    );
  }
}
