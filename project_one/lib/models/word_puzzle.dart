import 'package:flutter/material.dart';
import 'package:project_one/widgets/gradient_letter.dart';
import 'package:word_search_safety/word_search_safety.dart';
import 'package:project_one/pages/page_three.dart';

class WordSearch extends StatefulWidget {
  const WordSearch({super.key});

  @override
  State<WordSearch> createState() => _WordSearchState();
}

class _WordSearchState extends State<WordSearch> {
  List<String> nameOfCharacter = ["M", 'I', 'C', 'K', 'E', 'Y'];

  WSSettings wsSettings = WSSettings(width: 7, height: 2, orientations: [
    WSOrientation.horizontal,
    WSOrientation.vertical,
  ]);

  WordSearchSafety wordSearch = WordSearchSafety();
  WSNewPuzzle? newPuzzle;
  WSSolved? wsSolved;
  String textValue="h";

  @override
  void initState() {
    super.initState();
    newPuzzle = wordSearch.newPuzzle(nameOfCharacter, wsSettings);
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: 110,

        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: wsSettings.width),
            itemCount: wsSettings.height * wsSettings.width,
            itemBuilder: (BuildContext context, int index) {
              int row = index ~/ wsSettings.width;
              int column = index % wsSettings.width;

              final cell = newPuzzle!.puzzle![row][column];
              return GradientLetter(cell, 42, 42, 10.92, 5.46, 25.93);
                  //child: Center(
                  //  TextButton(
                  //     onPressed: () {
                  //       setState(() {
                  //         textValue = cell;
                  //       });
                  //     },
                  //     child: GradientLetter(cell, 42, 42, 10.92, 5.46, 25.93)
                  //
                  // );
            }),
      ),
      // void viewLetters() {
      // Text(textValue)}
    ]);
  }
}
