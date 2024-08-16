import '../models/word_search_model.dart';

class WordListRepository {
  final List<WordSearchModel> search_words = [
    WordSearchModel(imageURL: 'assets/images/IMG.png', hiddenWord: ['M','i', 'c', 'k', 'e', 'y']),
    WordSearchModel(imageURL: 'assets/images/elsa.png', hiddenWord: ['E', 'l', 's', 'a']),
    WordSearchModel(imageURL: "assets/images/totoro.jpeg", hiddenWord: ['T', 'o', 't', 'o', 'r', 'o'])
  ];
}