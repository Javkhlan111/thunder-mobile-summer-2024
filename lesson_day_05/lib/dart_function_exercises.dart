class Dog{
  int age;
  String name;

  Dog(this.age, this.name);

  void printMyAge(){
    print(age);
  }

  void printMyName(){
    print(name);
  }

  void addMyAge(){
    print(age + 1);
  }
}

void main(){
  Dog Koko = Dog(3, "Koko");

  Koko.printMyName();
  Koko.printMyAge();
  Koko.addMyAge();
}