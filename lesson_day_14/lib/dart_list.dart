class Problem{
  int a = 1;
  int b = 2;
}

class Solution{
  List<int> myNumbers = [1,2,3,4,5,6];
  List<double> myDoubles = [0.1, 0.3, 0.5, 0.7, 0.23,0.47,0.78,0.71,0.67,0.57];
  List<String> myStrings = ['apple', 'banana', 'orange', 'grape', 'pear', 'strawberry'];
  List<bool> myBooleans = [true, false, true, false, true, true];
  void myObjects(){

    Problem pb01 = Problem();
    Problem pb02 = Problem();
    Problem pb03 = Problem();

    List<Problem> myObjects = [pb01, pb02, pb03];

  }

}

void main(){
  Solution mySolution = Solution();
  print(mySolution.myDoubles);
  print(mySolution.myNumbers);
  print(mySolution.myStrings);
  print(mySolution.myBooleans);
  mySolution.myObjects();


}