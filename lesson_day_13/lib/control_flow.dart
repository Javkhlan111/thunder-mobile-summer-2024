class Ex01 {
  int myAge;
  int maryAge;

  Ex01({required this.myAge, required this.maryAge});

  void calculate() {
    bool isTeenager;
    if (myAge < 19 && myAge > 13) {
      isTeenager = true;
    } else {
      isTeenager = false;
    }
    if (isTeenager) {
      print("You are teenager");
    } else {
      print("You are not teenager");
    }
  }

  void bothTeenagers() {
    bool bothTeenager;

    if (myAge < 19 && maryAge < 19 && myAge > 13 && maryAge > 13) {
      bothTeenager = true;
    } else {
      bothTeenager = false;
    }
    if (bothTeenager) {
      print("Mary and you are both teenagers");
    } else {
      print("At least one of you is not a teenager");
    }
  }
}

class Ex03 {
  String reader;
  String elon;
  Ex03({required this.reader, required this.elon});

  void checkElon() {
    bool elonIsReader;
    if (elon == reader) {
      elonIsReader = true;
    } else {
      elonIsReader = false;
    }
    if (elonIsReader) {
      print("Elon is Reader");
    } else {
      print("Elon is not Reader");
    }
  }
}

// Ex05
// true && true ====== true
// false || false ======= false
// (true && 1 != 2) || (4 > 3 && 100 < 1) ====== true
// ((10 / 2) > 3) && ((10 % 2) == 0) ======== true
class Ex06 {
  int num1;
  int num2;
  Ex06({required this.num1, required this.num2});
  void compare() {
    if (num1 > num2) {
      print("${num1} is greater than ${num2}");
    } else if (num1 < num2) {
      print("${num1} is less than ${num2}");
    } else {
      print("${num1} is equal to ${num2}");
    }
  }
}

class Ex07 {
  int num1;
  int num2;
  Ex07({required this.num1, required this.num2});
  void multiply() {
    if (num1 * num2 == 64) {
      print("The product of ${num1} & ${num2} is 64.");
    } else {
      print("The product of ${num1} & ${num2} is not 64.");
    }
  }
}

class Ex08 {
  int num1;
  int num2;
  Ex08({required this.num1, required this.num2});
  void divide() {
    double a = num1 % 2;
    double b = num2 % 2;
    if (a == 0 && b == 0) {
      print("The numbers can be divided by 2");
    } else {
      print("The numbers can't be divided by 2");
    }
  }
}

class Ex09 {
  int num1;
  Ex09({required this.num1});
  void evenOrOdd() {
    double a = num1 % 2;
    if (a == 0) {
      print("${num1} is even");
    } else {
      print("${num1} is odd");
    }
  }
}

class Ex10 {
  int a;
  int b;
  int c;
  Ex10({required this.a, required this.b, required this.c});
  void findLargestNumber() {
    if (a >= b && a > c) {
      print("${a} is the largest number");
    } else if (b > a && b > c) {
      print("${b} is the largest number");
    } else {
      print("${c} is the largest number");
    }
  }
}

class Ex11 {
  double temprature;
  String TempType;

  Ex11({required this.temprature, required this.TempType});

  void conveyTemp() {
    if (TempType == "F") {
      double celsius = (temprature - 32) / 1.8;
      print("The temperature from Fahrenheit into Celcius is ${celsius}");
    } else {
      double fahrenheit = (temprature * 9 / 5) + 32;
      print("The temperature from Celcius into Fahrenheit is ${fahrenheit}");
    }
  }
}

class Ex12 {
  int age;

  Ex12({required this.age});

  void personAge() {
    if (0 <= age && age < 13) {
      print("Child");
    } else if (13 <= age && age <= 19) {
      print("Teenager");
    } else if (20 < age && age <= 64) {
      print("Adult");
    } else if (65 < age && age < 100) {
      print("Senior");
    } else if (age >= 100) {
      print("Congratulations");
    } else {
      print("Not Age");
    }
  }
}

class Ex13 {
  int num;

  Ex13({required this.num});

  void negativeOrPositive() {
    if (num < 0) {
      print("${num} is a negative number");
    } else if (num > 0) {
      print("${num} is a positive number");
    } else {
      print("${num} is zero");
    }
  }
}

class Ex14 {
  int a;
  int b;
  int c;

  Ex14({required this.a, required this.b, required this.c});

  void findTriangle() {
    if (a + b + c != 180) {
      print("These angles cannot form a triangle");
    } else {
      if (a == b && b == c) {
        print("The triange is an equilateral triangle");
      }
      else if (a == b || b == c || c == a) {
        print("The triange is an isosceles triangle");
      } else {
        print("The triange is an scalene triangle");
      }
    }
  }
}

class Ex15 {
  int a;


  Ex15({required this.a});

  void findScore() {
    if (a > 89 && a < 101) {
      print("You got an A");
    } else if (a < 90 && a > 79){
        print("You got an B");
    } else if (a < 80 && a > 69){
      print("You got an C");
    } else if (a < 70 && a > 59){
      print("You got an D");
    } else if (a < 60 && a > 0){
      print("You got an F");
    } else {
      print("Wrong Score!");
    }
  }
}

void main() {
  Ex01 ex01 = Ex01(myAge: 15, maryAge: 19);
  ex01.calculate();
  ex01.bothTeenagers();

  Ex03 ex03 = Ex03(reader: "Elon Musk", elon: "Elon Musk");
  ex03.checkElon();

  Ex06 ex06 = Ex06(num1: 13, num2: 17);
  ex06.compare();

  Ex07 ex07 = Ex07(num1: 8, num2: 8);
  ex07.multiply();

  Ex08 ex08 = Ex08(num1: 8, num2: 4);
  ex08.divide();

  Ex09 ex09 = Ex09(num1: 80);
  ex09.evenOrOdd();

  Ex10 ex10 = Ex10(a: 8, b: 8, c: 7);
  ex10.findLargestNumber();

  Ex11 ex11 = Ex11(temprature: 32, TempType: "C");
  ex11.conveyTemp();

  Ex12 ex12 = Ex12(age: 32);
  ex12.personAge();

  Ex13 ex13 = Ex13(num: -15);
  ex13.negativeOrPositive();

  Ex14 ex14 = Ex14(a: 60, b: 60, c: 60);
  ex14.findTriangle();

  Ex15 ex15 = Ex15(a: 102);
  ex15.findScore();
}
