import 'package:flutter/material.dart';
import 'package:project_one/pages/page_two.dart';
import 'package:project_one/pages/page_three.dart';
class Input extends StatefulWidget {
  String name;
  final void start;
  Input(this.name, this.start, {super.key});

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  final nameEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 310,
          height: 50,
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: TextField(
            controller: nameEditingController,
            cursorColor: Color(0xFFFFA500),
            style: TextStyle(
              fontFamily: 'Nunito',
              fontSize: 18,
              fontWeight: FontWeight.w600
            ),
            decoration:
              InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide.none,
                ),
                hintText: "Type here",
                hintStyle: TextStyle(
                  color: Color(0xFFE76A01),
                  fontSize: 18,
                  fontFamily: "Nunito",
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
                filled: true,
                fillColor: Colors.white,
                suffixIcon: IconButton(onPressed: (){},icon: Icon(Icons.clear), color: Colors.orange,)
            ),
            onSubmitted: (text){
              setState((){
                widget.name = text;
                widget.start;
              });
            },

          ),
        ),
      ],
    );
  }
}

//
