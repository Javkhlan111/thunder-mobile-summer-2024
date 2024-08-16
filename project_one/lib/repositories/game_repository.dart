import '../models/game_model.dart';

class GameRepository {
  List<GameModel> repositories = [
    GameModel(hiddenWord: ['M','i', 'c', 'k', 'e', 'y'], imagePath: 'assets/images/IMG.png'),
    GameModel(hiddenWord: ['E', 'l', 's', 'a'], imagePath: 'assets/images/elsa.png'),
    GameModel(hiddenWord: ['T', 'o', 't', 'o', 'r', 'o'], imagePath: "assets/images/totoro.jpeg")
  ];
  // List<GameNavigation> navigations = [GameNavigation(imagePath: "assets/images/previous 1.png"),
  // GameNavigation(imagePath: "assets/images/previousGray.png")];
  //
  // void changeNavigationButtons() {
  //   navigations[0].imagePath = navigations[1].imagePath;
  // }
}
