import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  void printMyName(){
    print('Hello this is page two');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Hi Page Two", style: TextStyle(
              color: Colors.indigo, fontSize: 40
            ),),
            TextButton(onPressed: printMyName, child: Text("I'm a Text Button",
            style: TextStyle(
              color: Colors.blueGrey, fontSize: 32
            ),))
          ],
        ),
      ),
    );
  }
}
