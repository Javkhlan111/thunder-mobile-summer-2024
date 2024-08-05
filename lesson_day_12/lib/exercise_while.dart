class Ex01 {


  void printMyName() {
    int howManyTimes = 1;
    while (howManyTimes <= 1000) {
      print("${howManyTimes} - Javkhlan");
      howManyTimes = howManyTimes + 1;
    }
  }
}

class Ex02{
  void printAdd6(){
    int a = 6;
    int b = 1;
    while (a < 601){
      print("${b}. ${a}");
      a = a + 6;
      b = b + 1;
    }
  }
}

class Ex03{
  void hurd5(){
    int c = 1;
    const int d = 5;
    int e = c * 5;
    while (c < 11){
      print("${c} x ${d} = ${e}");
      c = c + 1;
    }
  }
}

  void main(){
    Ex01 ex01 = Ex01();
    ex01.printMyName();

    Ex02 ex02 = Ex02();
    ex02.printAdd6();

    Ex03 ex03 = Ex03();
    ex03.hurd5();
  }