class Solution{
  List<int> myNumbers = [1,2,3,4,5,6,7,8,9,10];

  void printElements(){
    for(int i = 0; i < 10; i++){
      print(myNumbers[i]);
    }
    myNumbers.add(11);
    int numberLength = myNumbers.length;
    for(int i = 0; i < myNumbers.length; i++){
      print(myNumbers[i]);
    }
  }
  void exercises(){
    List<double> myDoubles = [0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 0.11, 0.12];
    for (int i = 0; i<10; i++){
      print(myDoubles[i]);
    }
    List<bool> myBooleans = [true, false, true, true, false, false, true, false];
    int i = 0;
    while(i<8){
      print(myBooleans[i]);
      i = i+1;
    }
    myBooleans.add(true);
    myBooleans.add(false);
    for(i=0; i<10; i++){
      print(myBooleans[i]);
    }
    List<String> fruits = ['apple', 'banana', 'orange', 'grape', 'pear'];
    for(i= 0; i<5; i++){
      print(fruits[i]);
    }
    fruits.remove('grape');
    i = 0;
    while(i<4){
      print(fruits[i]);
      i++;
    }
  }

}

void main(){
  Solution solution = Solution();
  solution.printElements();
  solution.exercises();
}