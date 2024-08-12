import '../models/game_model.dart';

class GameRepository {
  List<GameModel> repositories = [
    GameModel(name: 'Mickey', imagePath: 'assets/images/IMG.png'),
    GameModel(name: "Elsa", imagePath: 'assets/images/elsa.png'),
    GameModel(name: "Totoro", imagePath: "assets/images/totoro.jpeg")
  ];
  // List<GameNavigation> navigations = [GameNavigation(imagePath: "assets/images/previous 1.png"),
  // GameNavigation(imagePath: "assets/images/previousGray.png")];
  //
  // void changeNavigationButtons() {
  //   navigations[0].imagePath = navigations[1].imagePath;
  // }
}
