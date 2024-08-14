import 'package:flutter/material.dart';
import 'package:project_one/widgets/gradient_letter.dart';
import 'package:word_search_safety/word_search_safety.dart';
import 'package:project_one/pages/page_three.dart';
import 'hidden_word_widget.dart';

class WordSearch extends StatefulWidget {
  const WordSearch({super.key});

  @override
  State<WordSearch> createState() => _WordSearchState();
}

class _WordSearchState extends State<WordSearch> {
  List<String> nameOfCharacter = ["M", 'I', 'C', 'K', 'E', 'Y'];

  WSSettings wsSettings =
      WSSettings(width: 7, height: 2, preferOverlap: false, orientations: [
    WSOrientation.horizontal,
    WSOrientation.vertical,
  ]);

  WordSearchSafety wordSearch = WordSearchSafety();
  WSNewPuzzle? newPuzzle;
  WSSolved? wsSolved;

  List<bool> revealedHiddenword = [];

  @override
  void initState() {
    super.initState();
    revealedHiddenword = List.filled(nameOfCharacter.length, false);

    newPuzzle = wordSearch.newPuzzle(nameOfCharacter, wsSettings);
    if (newPuzzle!.errors!.isEmpty) {
      wsSolved = wordSearch.solvePuzzle(newPuzzle!.puzzle!, nameOfCharacter);
    }
  }

  void onLetterSelected(String letter) {
    setState(() {
      updateHiddenWordGrid(letter);
    });
  }

  void updateHiddenWordGrid(letter) {
    print("updateHiddenWordGrid: $letter");
    for (int i = 0; i < nameOfCharacter.length; i++) {
      if (nameOfCharacter[i] == letter) {
        revealedHiddenword[i] = true;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Expanded(
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: wsSettings.width),
            itemCount: wsSettings.height * wsSettings.width,
            itemBuilder: (BuildContext context, int index) {
              int row = index ~/ wsSettings.width;
              int column = index % wsSettings.width;

              final letter = newPuzzle!.puzzle![row][column];
              return Container(
                child: GestureDetector(
                    onTap: () {
                      setState(() {
                        onLetterSelected(letter);
                      });
                    },
                    child: GradientLetter(letter, 42, 42, 10.92, 5.46, 25.93)),
              );
            }),
      ),
      // void viewLetters() {
      // Text(textValue)}
    ]);
  }
}
