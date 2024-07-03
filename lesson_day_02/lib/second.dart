class Dog{

  int age;
  String name;

  Dog(this.age, this.name);
}


void main() {

  Dog bankhar =  Dog(1, 'bankhar');
  print(bankhar.age);
  print(bankhar.name);
  print('===========');

  Dog tsas =  Dog(3, 'tsas');
  print(tsas.age);
  print(tsas.name);
  print('===========');

  Dog borko =  Dog(8, 'borko');
  print(borko.age);
  print(borko.name);
  print('===========');
}