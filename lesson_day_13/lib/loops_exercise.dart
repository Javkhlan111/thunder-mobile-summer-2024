import 'dart:math';

class Ex01 {

  void whileLoop(){
    int i = 0;
    while(i < 10){
      print("${i}");
      i = i+1;
      // i ++
    }
  }
}

class Ex02 {

  void forLoop(){
    for(int i = 1; i < 10; i++) {
      print("${i*i}");
    }
  }
}

class Ex03 {

  void printSequence(){
    for(double i = 0.0; i < 1.0; i=i+0.1) {
      print("${i.toStringAsFixed(1)}");
    }
  }
}

class Ex04 {

  void printSequence(){
    for(int i = 10; i > 0; i=i-1) {
      print("${i}");
    }
  }
}

class Ex05 {

  void sum(){
    var sum = 0;
    for (var i = 0; i <= 5; i++ ) {
      sum += i;
      print(sum);
      /// 6 davtamj
    }
    }
}

class Ex06 {

  void sum20(){
    int sum = 0;
    for(int i = 0; i < 21; i=i+2) {
      sum = sum + i;

    }
    print(sum);
  }
}

class Ex07{
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

class Ex08{
  void printOdd(){
    int c = 1;
    for(int i = 1; i < 10; i=i+2, c = c+1) {
      print("${c}: ${i}");
    }
  }
}

class Ex09{
  void printEven(){
    int c = 1;
    for(int i = 2; i < 11; i=i+2, c = c+1) {
      print("${c}: ${i}");
    }
  }
}

class Ex10{
  void printHello(){
    for(int i = 1; i < 51; i = i+1) {
      print("${i}. Hello");
    }
  }
}

class Ex11{
  void divide3(){
    int c = 1;
    for(int i = 3; i < 101; i=i+3, c = c+1) {
      print("${c}: ${i}");
    }
  }
}

class Ex12{
  void squarert(){
    int c = 1;
    for(int i = 1; i < 21;  i++, c = c +1) {
      print("${c}: ${sqrt(i).toStringAsFixed(3)}");
    }
  }
}

class Ex13 {
  void printTwentyToOne(){
    for(int i = 20; i > 0; i=i-1) {
      print("${i}");
    }
  }
}

class Ex14{
  void square(){
    for(int i = 1; i < 21;  i++) {
      print(i*i);
    }
  }
}

class Ex15{
  void quadratSum(){
    int sum=0;

    for(int i = 1; i < 6;  i=i+1) {
      sum = sum + i*i;

    }
    print("The quadrat sum of numbers from 1 to 5 is ${sum}");
  }
}

void main(){
  Ex01 ex01 = Ex01();
  ex01.whileLoop();
  print("====================");
  Ex02 ex02 = Ex02();
  ex02.forLoop();
  print("====================");
  Ex03 ex03 = Ex03();
  ex03.printSequence();
  print("====================");
  Ex04 ex04 = Ex04();
  ex04.printSequence();
  print("====================");
  Ex05 ex05 = Ex05();
  ex05.sum();
  print("====================");
  Ex06 ex06 = Ex06();
  ex06.sum20();
  print("====================");
  Ex07 ex07 = Ex07();
  ex07.hurd5();
  print("====================");
  Ex08 ex08 = Ex08();
  ex08.printOdd();
  print("====================");
  Ex09 ex09 = Ex09();
  ex09.printEven();
  print("====================");
  Ex10 ex10 = Ex10();
  ex10.printHello();
  print("====================");
  Ex11 ex11 = Ex11();
  ex11.divide3();
  print("====================");
  Ex12 ex12 = Ex12();
  ex12.squarert();
  print("====================");
  Ex13 ex13 = Ex13();
  ex13.printTwentyToOne();
  print("====================");
  Ex14 ex14 = Ex14();
  ex14.square();
  print("====================");
  Ex15 ex15 = Ex15();
  ex15.quadratSum();
  print("====================");
}