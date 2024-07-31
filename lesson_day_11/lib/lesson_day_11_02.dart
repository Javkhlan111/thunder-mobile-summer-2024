class IfElseCondition {
  int a;
  int b;
  int c;


  IfElseCondition({required this.a, required this.b, required this.c});

  int findMaximum(){
    if (a >= b && a >= c) {
      return a;
    }
    else if (b >= a && b >= c) {
       return b;
    }
    else
      return c;

  }
}


void main() {
  IfElseCondition result01 = IfElseCondition(a: 5, b: 6, c: 7);
  print(result01.findMaximum());

  IfElseCondition result02 = IfElseCondition(a: -1, b: -2, c: -3);
  print(result02.findMaximum());

  IfElseCondition result03 = IfElseCondition(a: 7, b: 1000, c: -1);
  print(result03.findMaximum());

  IfElseCondition result04 = IfElseCondition(a: 7, b: 7, c: 8);
  print(result04.findMaximum());

  IfElseCondition result05 = IfElseCondition(a: 7, b: 8, c: 8);
  print(result05.findMaximum());
}