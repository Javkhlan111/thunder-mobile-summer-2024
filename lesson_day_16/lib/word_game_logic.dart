import 'package:lesson_day_16/word_game_logic.dart';
import 'package:word_search_safety/word_search_safety.dart';

void main(){
  print("Word Game Logic - Part One");

  List<String> myList = ["table", 'chair', 'sofa', 'desk',
    'lamp', 'wardrobe', 'armchair', 'floor', 'carpet', 'bed'];

  final WSSettings wsSettings = WSSettings(width: 10, height: 10,
  orientations: List.from([
    WSOrientation.horizontal,
    WSOrientation.vertical,
    WSOrientation.diagonal
  ]
  ));
  WordSearchSafety wordSearch = WordSearchSafety();

  WSNewPuzzle newPuzzle = wordSearch.newPuzzle(myList, wsSettings);
  if(newPuzzle.errors!.isEmpty){
    print(newPuzzle.toString());

    WSSolved solved = wordSearch.solvePuzzle(newPuzzle.puzzle!, ['floor', 'carpet', 'lamp']);
    print(('Found words'));
    for (int i = 0; i< solved.found!.length; i++){
      print(solved.found![i].word);
    }
    print('Not found words:');
    for (int i = 0; i < solved.notFound!.length; i++) {
      print(solved.notFound);
    }

  }

}