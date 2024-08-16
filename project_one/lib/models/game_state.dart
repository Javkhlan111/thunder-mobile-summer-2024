import 'package:project_one/models/game_model.dart';

class GameState {
  GameModel currentModel;
  int currentModelIndex;
  bool isWon;
  int howManyGuessed;

  GameState({required this.currentModel, required this.currentModelIndex,
    required this.isWon, required this.howManyGuessed});
}