import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:project_one/models/game_state.dart';
import 'package:project_one/models/word_puzzle.dart';
import 'package:project_one/pages/page_four.dart';
import 'package:project_one/repositories/game_repository.dart';
import '../widgets/gradient_letter.dart';
import '../widgets/gradient_text.dart';
import '../widgets/keyboard.dart';
import '../widgets/orange5.dart';
import 'page_two.dart';
import 'package:project_one/widgets/input.dart';
import 'package:project_one/widgets/modal.dart';
import '../models/game_model.dart';
import 'package:word_search_safety/word_search_safety.dart';
import '../models/hidden_word_widget.dart';
import '../widgets/gameoverWinnerBox.dart';

class PageThree extends StatefulWidget {
  final String name;

  const PageThree({super.key, required this.name});

  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  int score = 0;
  int orange = 5;
  int incorrect = 0;
  late List<String> hiddenWord = [];
  final WSSettings settings = WSSettings(
      width: 7,
      height: 2,
      orientations: List.from([
        WSOrientation.horizontal,
      ]));

  final WordSearchSafety wordSearch = WordSearchSafety();
  WSNewPuzzle? newPuzzle;
  WSSolved? solved;

  List<bool> revealedHiddenWord = [];
  late GameState gameState;
  int currentIndex = 0;
  bool isWon = false;
  int howManyGuessed = 0;

  @override
  void initState() {
    super.initState();
    final GameRepository wordListRepository = GameRepository();

    gameState = GameState(
        currentModel: wordListRepository.repositories[currentIndex],
        currentModelIndex: currentIndex,
        isWon: isWon,
        howManyGuessed: howManyGuessed);
    hiddenWord = gameState.currentModel.hiddenWord;
    revealedHiddenWord = List.filled(hiddenWord.length, false);
    newPuzzle = wordSearch.newPuzzle(hiddenWord, settings);
    if (newPuzzle!.errors!.isEmpty) {
      solved = wordSearch.solvePuzzle(
          newPuzzle!.puzzle!, gameState.currentModel.hiddenWord);
    }
  }

  void onLetterSelected(String letter) {
    setState(() {
      updateHiddenWordGrid(letter);
    });
  }

  void gameOverDialogueBox() {
    gameOverWinnerDialog(
      context,
      "Game Over",
      "Try Again",
    );
  }

  void updateHiddenWordGrid(letter) {
    print('updateHiddenWordGrid: $letter');
    for (int i = 0; i < hiddenWord.length; i++) {
      if (hiddenWord[i] == letter && !revealedHiddenWord[i]) {
        setState(() {
          revealedHiddenWord[i] = true;
        });
        break;
      } else if (revealedHiddenWord[i] != true) {
        orange--;
        incorrect++;
        if (orange == 0) {
          gameOverDialogueBox();
        }
        ;
        break;
      }
    }

    void winnerDialogueBox() {
      gameOverWinnerDialog(context, "Winner", "Play Again");
    }

    if (revealedHiddenWord.every((element) => element == true)) {
      print('You won!');
      isWon = true;
      setState(() {
        score++;
      });
      if (isWon) {
        if (GameRepository().repositories.length - 1 ==
            gameState.currentModelIndex) {
          print('You won the game!');
          winnerDialogueBox();

          return;
        }
        gameState.currentModelIndex++;
        gameState.currentModel =
            GameRepository().repositories[gameState.currentModelIndex];
        hiddenWord = gameState.currentModel.hiddenWord;
        revealedHiddenWord = List.filled(hiddenWord.length, false);
        isWon = false;
        newPuzzle = wordSearch.newPuzzle(hiddenWord, settings);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/images/back2.png"),
            fit: BoxFit.cover,
          )),
          width: double.infinity,
          child: Column(children: [
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.00,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    child: Image.asset("assets/images/exit.png",
                        width: 32, height: 32),
                    onPressed: () {
                      exitDialog(context, "ARE YOU SURE TO QUIT?", "Yes", "No");
                    },
                  ),
                  Center(
                    child: SizedBox(
                      width: 140,
                      height: 57,
                      child: Center(
                        child: Text(
                          widget.name,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFE76A01),
                            fontSize: 24,
                            fontFamily: 'Ribeye',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset("assets/images/trophy 1.png",
                          width: 24, height: 24),
                      SizedBox(
                        width: 25,
                        height: 33,
                        child: Text(
                          score.toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFE76A01),
                            fontSize: 20,
                            fontFamily: 'Ribeye',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 9,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 0; i < orange; i++)
                      Image.asset(
                        "assets/images/orange.png",
                        width: 25,
                        height: 25,
                      )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 0; i < incorrect && i < 5; i++)
                      Image.asset(
                        "assets/images/orangeGray.png",
                        width: 25,
                        height: 25,
                      )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 31,
            ),
            SizedBox(
              width: 68,
              height: 33,
              child: Text(
                '${score + 1}/3',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFFF9002),
                  fontSize: 20,
                  fontFamily: 'Ribeye',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ),
            SizedBox(
              height: 4,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(
              horizontal: 22.00,
            ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // SizedBox(
                  //   width: 5,
                  // ),
                  if (score == 0)
                    Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/previousGray.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    )
                  else if (score > 0)
                    Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/previous 1.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  Center(
                    child: Container(
                      width: 265,
                      height: 263,
                      decoration: ShapeDecoration(
                        image: DecorationImage(
                          image: AssetImage(gameState.currentModel.imagePath),
                          fit: BoxFit.fill,
                        ),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 0.96, color: Color(0xFFE76A01)),
                          borderRadius: BorderRadius.circular(22.95),
                        ),
                      ),
                    ),
                  ),
                  if (score == 2)
                    Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/nextGray.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    )
                  else if (score < 2)
                    Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/next.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                ],
              ),
            ),
            SizedBox(
              height: 27,
            ),
            Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(hiddenWord.length, (index) {
                    if (revealedHiddenWord[index]) {
                      print(revealedHiddenWord[index]);
                      print('name of character ${hiddenWord[index]}');
                      return Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: GradientLetter(
                            '${hiddenWord[index]}', 43, 43, 9.4, 6.8, 25),
                      );
                    } else {
                      return Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: GradientLetter("", 43, 43, 9.4, 6.8, 25),
                      );
                    }
                  })),
            ),
            SizedBox(
              height: 11.5,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image.asset("assets/images/hint.png", width: 16, height: 16),
              SizedBox(
                width: 45,
                height: 19,
                child: Text(
                  'Hint',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFE76A01),
                    fontSize: 16,
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.underline,
                    decorationColor: Color(0xFFE76A01),
                    height: 0,
                  ),
                ),
              ),
            ]),
            SizedBox(
              height: 40,
            ),
            Container(
                width: double.infinity,
                height: 240,
                padding:
                    const EdgeInsets.only(top: 24, left: 27.03, right: 27.03),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x196A4423),
                      blurRadius: 100,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: settings.width),
                          itemCount: settings.height * settings.width,
                          itemBuilder: (BuildContext context, int index) {
                            int row = index ~/ settings.width;
                            int column = index % settings.width;

                            final letter = newPuzzle!.puzzle![row][column];
                            return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    onLetterSelected(letter);
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: GradientLetter(
                                      letter, 20, 20, 10.92, 5.46, 25.93),
                                ));
                          }),
                    ),
                    Row(
                      children: [
                        Container(
                          width: 78,
                          height: 35,
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 1, color: Color(0x3AE76A01)),
                                borderRadius: BorderRadius.circular(10.92)),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/images/reload.png",
                                width: 18,
                                height: 18,
                              ),
                              SizedBox(width: 3),
                              Text(
                                "abc",
                                style: TextStyle(
                                    color: Color(0xFFFF9002),
                                    fontSize: 20,
                                    fontFamily: "Nunito",
                                    fontWeight: FontWeight.w600,
                                    height: 0),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    )
                  ],
                )),
          ]),
        ),
      ),
    );
  }
}

// TextButton(
//     onPressed: () {
//       if (currentIndex >= 1) {
//         currentIndex--;
//       } else if (currentIndex == 0) {}
//     },
//     // child: Container(
//     //     width: 32,
//     //     height: 32,
//     //     decoration: BoxDecoration(
//     //       image: DecorationImage(
//     //         image: AssetImage("assets/images/previous 1.png"),
//     //         fit: BoxFit.fill,
//     //       ),
//     //     ),
//     //   );
//     child: Container(
//       width: 32,
//       height: 32,
//       decoration: BoxDecoration(
//         image: DecorationImage(
//           image: AssetImage("assets/images/previous 1.png"),
//           fit: BoxFit.fill,
//         ),
//       ),
//     )),

// TextButton(
//   onPressed: () {
//     setState(() {
//       if (currentIndex <
//           gameState.currentModel.hiddenWord.length - 1) {
//         currentIndex++;
//       } else {
//         AssetImage("assets/images/nextGray.png");
//       }
//     });
//   },
//   child: Container(
//     width: 32,
//     height: 32,
//     decoration: BoxDecoration(
//       image: DecorationImage(
//         image: AssetImage("assets/images/next.png"),
//         fit: BoxFit.fill,
//       ),
//     ),
//   ),
// ),
// WordSearch(),
// Row(
//   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//   children: [
//     GradientLetter("A", 42, 42, 10.92, 5.46, 25.93),
//     GradientLetter("E", 42, 42, 10.92, 5.46, 25.93),
//     GradientLetter("T", 42, 42, 10.92, 5.46, 25.93),
//     GradientLetter("I", 42, 42, 10.92, 5.46, 25.93),
//     GradientLetter("P", 42, 42, 10.92, 5.46, 25.93),
//     GradientLetter("M", 42, 42, 10.92, 5.46, 25.93),
//     GradientLetter("O", 42, 42, 10.92, 5.46, 25.93),
//   ],
// ),
// SizedBox(height: 7),
//
