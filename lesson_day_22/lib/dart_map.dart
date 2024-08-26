class Problem {
  List<String> favouriteSports = ["Karate", "Football", "Swimming"];

  void printMySports(){
    print(favouriteSports);
  }
}

class Solution {
  final Map<String, double> favouriteSportsRating = {
    'Karate': 2.5,
    "Football": 2,
    "Swimming": 1.5,
  };

  void printMySports(){
    print(favouriteSportsRating);
  }

  void mapOperations(){
    print(favouriteSportsRating["Karate"]);
    print(favouriteSportsRating["Football"]);
    print(favouriteSportsRating["Swimming"]);
    print(favouriteSportsRating.values);
    print(favouriteSportsRating.keys);
  }
}

void main(){
  Problem problem = Problem();
  problem.printMySports();

  Solution solution = Solution();
  solution.printMySports();
  solution.mapOperations();

}