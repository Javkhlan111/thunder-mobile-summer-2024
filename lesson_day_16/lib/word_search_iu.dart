import 'package:flutter/material.dart';
import 'package:word_search_safety/word_search_safety.dart';

class WordSearch extends StatefulWidget {
  const WordSearch({super.key});

  @override
  State<WordSearch> createState() => _WordSearchState();
}

class _WordSearchState extends State<WordSearch> {
  List<String> nameOfGame = ["T", 'O', 'T', 'O', 'R', 'O'];

  WSSettings wsSettings = WSSettings(width: 10, height: 1, orientations: [
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
    newPuzzle = wordSearch.newPuzzle(nameOfGame, wsSettings);
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: 300,
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: wsSettings.width),
            itemCount: wsSettings.height * wsSettings.width,
            itemBuilder: (BuildContext context, int index) {
              int row = index ~/ wsSettings.width;
              int column = index % wsSettings.width;

              final cell = newPuzzle!.puzzle![row][column];
              return Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1)),
                  child: Center(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          textValue = cell;
                        });
                      },
                      child: Text(
                        cell,
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ));
            }),
      ),
      Text(textValue)
    ]);
  }
}
