import 'package:flutter/material.dart';
import 'package:word_search_safety/word_search_safety.dart';
import 'hidden_word_widget.dart';

class WordSearchScreen extends StatefulWidget {
  const WordSearchScreen({super.key});

  @override
  State<WordSearchScreen> createState() => _WordSearchScreenState();
}

class _WordSearchScreenState extends State<WordSearchScreen> {
  final List<String> hiddenWord = ["T", 'O', 'T', 'O', 'R', 'O'];


  final WSSettings settings = WSSettings(
      width: 7,
      height: 2,
      preferOverlap: false,
      orientations: List.from([
        WSOrientation.horizontal,
      ])
  );

  final WordSearchSafety wordSearch = WordSearchSafety();
  WSNewPuzzle? newPuzzle;
  WSSolved? solved;

  List<bool> revealedHiddenword = [];

  @override
  void initState() {
    super.initState();
    revealedHiddenword = List.filled(hiddenWord.length, false);

    newPuzzle = wordSearch.newPuzzle(hiddenWord, settings);
    if (newPuzzle!.errors!.isEmpty){
      solved = wordSearch.solvePuzzle(newPuzzle!.puzzle!, hiddenWord);
    }
  }

  void onLetterSelected(String letter){
    setState(() {
     updateHiddenWordGrid(letter);
    });
  }

  void updateHiddenWordGrid(letter){
    print("updateHiddenWordGrid: $letter");
    for(int i = 0; i < hiddenWord.length; i++){
      if (hiddenWord[i] == letter){
        revealedHiddenword[i] = true;
      }
    }
  }


  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
      Expanded(

        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: settings.width),
            itemCount: settings.height * settings.width,
            itemBuilder: (BuildContext context, int index) {
              int row = index ~/ settings.width;
              int column = index % settings.width;

              final letter = newPuzzle!.puzzle![row][column];
              return Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1)),
                  child: Center(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                         // updateHiddenWordGrid(letter);
                          onLetterSelected(letter);
                        });
                      },
                      child: Text(
                        letter,
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ));
            }),
      ),
      SizedBox(height: 20,),
      Text('Hidden Word Grid: '),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(hiddenWord.length, (index) {
          if (revealedHiddenword[index]) {
            print(hiddenWord[index]);
            return HiddenWidget(hiddenWord[index], 60, 60);
          } else {
            return HiddenWidget("", 60, 60);
          }
        }),
      ),
      SizedBox(height: 40,),

    ]);
  }
}
