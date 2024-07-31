class Ex01 {
  bool One;
  bool Two;
  bool Three;

  Ex01({required this.One, required this.Two,
    required this.Three});

  bool calculateEx01() {
    return !(One && Two) || Three;
  }
}

class Ex02 {
  double a;
  double b;
  double c;

  Ex02({required this.a, required this.b,
    required this.c});

  double findMinimum() {
    if (a<b && a<c){
      return a;
    };
    if (b<a && b<c){
      return b;
    }
    else return c;
  }
}

class Ex03 {
  double a;
  double b;
  double c;

  Ex03({required this.a, required this.b,
    required this.c});

  void findTriangle() {
    if (a == b && a == c && b==c) {
      print("equilateral triangle") ;
    }
    if (a == b || b == c || a== c){
      print("isosceles triangle");
    }
    else
      print("scalene triangle");
  }
}

class Ex04 {
  int age;

  Ex04({required this.age});

  void personAge() {
    if (0<= age && age < 13) {
      print("children");
    }
    else if (13<= age && age <= 17) {
      print("teenager");
    }
    else if (17< age && age <= 65) {
      print("adult");}
    else if (65 < age && age <= 100) {
        print("senior");}
    else if (age >= 100){
      print("dinosaur");}
    else print("Not Age");
  }
}

void main() {
  Ex01 test01 = Ex01(One: true, Two: true, Three: false);
  bool result01 = test01.calculateEx01();
  print(result01);

  Ex02 test02 = Ex02(a: 3.81, b: 7.73, c: 2.85);
  double result02 = test02.findMinimum();
  print(result02);
  Ex02 test03 = Ex02(a: 3.81, b: 1.05, c: 1.05);
  double result03 = test03.findMinimum();
  print(result03);

  Ex03 test04 = Ex03(a: 3, b: 5, c: 5);
  test04.findTriangle();

  Ex04 test05 = Ex04(age: 15);
  test05.personAge();

  Ex04 test06 = Ex04(age: 25);
  test06.personAge();

  Ex04 test07 = Ex04(age: -25);
  test07.personAge();

}