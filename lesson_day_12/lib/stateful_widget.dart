import 'package:flutter/material.dart';

class Problem extends StatelessWidget {
  const Problem({super.key});

  @override
  Widget build(BuildContext context) {
    int myAge = 0;
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text("${myAge}"),
          TextButton(onPressed: (){
            myAge = myAge + 1;
          }, child: Text("Click Me", style: TextStyle(
            fontSize: 40
          )
            ,))
        ],
        ),
      )
    );
  }
}
