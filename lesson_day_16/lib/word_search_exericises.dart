import 'package:lesson_day_16/word_game_logic.dart';
import 'package:word_search_safety/word_search_safety.dart';

void main(){

  List<String> myList = ["T", 'O', 'T', 'O',
    'R', 'O'];

  final WSSettings wsSettings = WSSettings(width: 7, height: 2,
      orientations: List.from([
        WSOrientation.horizontal,

      ]
      ));

  WordSearchSafety wordSearch = WordSearchSafety();

  WSNewPuzzle newPuzzle = wordSearch.newPuzzle(myList, wsSettings);
  if(newPuzzle.errors!.isEmpty){
    print(newPuzzle.toString());

    WSSolved solved = wordSearch.solvePuzzle(newPuzzle.puzzle!, ['T', 'x', 'R']);
    print(('Found words:'));
    for (int i = 0; i< solved.found!.length; i++){
      print(solved.found![i].word);
    }
    print('Not found words:');
    for (int i = 0; i < solved.notFound!.length; i++) {
      print(solved.notFound);
    }

  }

}