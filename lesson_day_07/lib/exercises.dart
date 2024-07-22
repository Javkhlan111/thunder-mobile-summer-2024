import 'dart:math';

class Exercise01 {
  int addNumbers(int number1, int number2) {
    return number1 + number2;
  }
}

class Exercise02 {
  double calculateSqrt(int a, int b) {
    return sqrt(a*a + b*b);
  }
}

class Exercise03{
  double calculateCircleArea(int a) {
    return pi*a*a;
  }
}

class Exercise04{
  int getLength(String word) {
    return word.length;
  }
}

class Exercise05{
  double celsiusToFahrenheit(double d){
    return (d - 32)* 5/9;
  }
}

class Exercise06{
  double fahrenheitToCelcius(double c){
    return (c * 9/5)+32;
  }
}

void main() {
  Exercise01 exercise01 = Exercise01();
  print(exercise01.addNumbers(4, 7));
  print(exercise01.addNumbers(5, 7));
  print(exercise01.addNumbers(4, 6));
  print(exercise01.addNumbers(9, 4));
  print(exercise01.addNumbers(1, 2));

  Exercise02 exercise02 = Exercise02();
  print(exercise02.calculateSqrt(3, 6));
  print(exercise02.calculateSqrt(7, 6));
  print(exercise02.calculateSqrt(8, 7));
  print(exercise02.calculateSqrt(2, 6));
  print(exercise02.calculateSqrt(1, 9));

  Exercise03 exercise03 = Exercise03();
  print(exercise03.calculateCircleArea(4));
  print(exercise03.calculateCircleArea(3));
  print(exercise03.calculateCircleArea(5));
  print(exercise03.calculateCircleArea(6));
  print(exercise03.calculateCircleArea(9));

  Exercise04 exercise04 = Exercise04();
  print(exercise04.getLength("hello"));
  print(exercise04.getLength("sainuu"));
  print(exercise04.getLength("ciao"));
  print(exercise04.getLength("bye"));
  print(exercise04.getLength("boloo"));

  Exercise05 exercise05 = Exercise05();
  print(exercise05.celsiusToFahrenheit(32));
  print(exercise05.celsiusToFahrenheit(89.6));
  print(exercise05.celsiusToFahrenheit(500));
  print(exercise05.celsiusToFahrenheit(36));
  print(exercise05.celsiusToFahrenheit(700));

  Exercise06 exercise06 = Exercise06();
  print(exercise06.fahrenheitToCelcius(32));
  print(exercise06.fahrenheitToCelcius(34));
  print(exercise06.fahrenheitToCelcius(80));
  print(exercise06.fahrenheitToCelcius(0));
  print(exercise06.fahrenheitToCelcius(39));




}


