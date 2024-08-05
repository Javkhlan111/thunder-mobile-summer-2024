class Problem {

  void printMyName(){
    int i = 0;
    while(i < 5){
    print("Name is");
    i = i+1;
    // i ++
      }
  }
}

class Solution {

  void printMyNameForLoop(){
    for(int i = 0; i < 5; i++) {
      print("My name is Javkhaa");
    }
  }
}

void main(){
  Problem problem = Problem();
  problem.printMyName();

  Solution solution = Solution();
  solution.printMyNameForLoop();

}