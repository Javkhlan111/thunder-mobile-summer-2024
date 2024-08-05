import 'package:flutter/material.dart';

class StatefulWidgetSolution extends StatefulWidget {
  const StatefulWidgetSolution({super.key});

  @override
  State<StatefulWidgetSolution> createState() => _StatefulWidgetSolutionState();
}

class _StatefulWidgetSolutionState extends State<StatefulWidgetSolution> {
  int myAge = 0;
  @override
  Widget build(BuildContext context) {

    return Container(
        child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("${myAge}", style: TextStyle(fontSize: 40)),
          TextButton(
            child: Text(
              "Click Me",
              style: TextStyle(fontSize: 40),
            ),
            onPressed: () {
              setState(() {
                myAge = myAge + 1;
              });
            },
          )
        ],
      ),
    ));
  }
}
