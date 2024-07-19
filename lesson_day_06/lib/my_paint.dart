import 'package:flutter/material.dart';

class PaintWidget extends StatelessWidget {
  const PaintWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
    decoration: BoxDecoration(
    image: DecorationImage(
      image: AssetImage("assets/images/zurag1.jpg"),
      fit: BoxFit.fill

      )
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text("This is text", style: TextStyle(
          color: Colors.deepPurpleAccent,
          fontSize: 35
        )),
        TextField(
          decoration: InputDecoration(
            labelText: "Label Text",
            hintText: 'Hint Text'
          ),
        )
      ],

    ),
    );
  }
}
