class Problem {




  void repeatMe(){
    print("Hi");
  }
}

class Solution{

  void printMe100Times(){
    int howManyTimes = 1;
    while(howManyTimes <= 5){
      print("${howManyTimes} - Hi");
      howManyTimes = howManyTimes + 1;
    }
  }
}

void main(){
  Solution solution = Solution();
  solution.printMe100Times();
}