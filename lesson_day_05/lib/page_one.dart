import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  void printMyName(){
    print('Hello this is page one');
  }


  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.cyan,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("hello 01",
                style: TextStyle(
                    color: Colors.amber, fontSize: 35),
              ),
              Text("hello 02",
                style: TextStyle(
                    color: Colors.amberAccent, fontSize: 35),
              ),
              TextButton(onPressed: printMyName, child: Text("press on me",
                style: TextStyle(
                    color: Colors.blueGrey, fontSize: 32
                ),))
            ],
          ),
        )
    );
  }
}
