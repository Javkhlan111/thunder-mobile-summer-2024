

import "package:flutter/material.dart";
import "functions.dart";

class FishWidget extends StatelessWidget {
  const FishWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Fish nemo = Fish(
        species: "Clown Fish",
        age: 2,
        color: "Orange Striped",
        numberOfChildren: 0);

    print('${nemo.age}');
    print('${nemo.numberOfChildren}');
    return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Center(
          child: Text(
            nemo.species,
            style: TextStyle(fontSize: 30, color: Colors.amberAccent),
          ),
        ),
        Text(
          '${nemo.age}',
          style: TextStyle(fontSize: 30, color: Colors.amberAccent),
        ),
        Text(
          nemo.color,
          style: TextStyle(fontSize: 30, color: Colors.amberAccent),
        ),
        Text(
          '${nemo.numberOfChildren}',
          style: TextStyle(fontSize: 30, color: Colors.amberAccent),
        )
      ],
    ));
  }
}
