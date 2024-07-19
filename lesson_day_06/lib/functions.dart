class Fish {
  String species;
  int age;
  String color;
  int numberOfChildren;

  Fish({required this.species,
    required this.age,
    required this.color,
    required this.numberOfChildren});

  void printMyName() {
    print(species);
  }

  void printMyAge() {
    print(age);
  }

  void printMyColor() {
    print(color);
  }

  void printMyNumberOfChildren() {
    print(numberOfChildren);
  }

  int addMyAge() {
    age = age + 1;
    return age;
  }

  int addMyChildren() {
    numberOfChildren = numberOfChildren + 10;
    return numberOfChildren;
  }

  String changeMycolor() {
    color = 'red Stripped';
    return color;
  }

  String changeMySpecies(String changeSpecies){
    species = changeSpecies;
    return species;
  }

  int setMyAge(int changeAge){
    age = changeAge;
    return age;
  }

  int setMyChildren(int changeChildren){
    numberOfChildren = changeChildren;
    return numberOfChildren;
  }
  String setMyColor(String changeColor){
    color = changeColor;
    return color;
  }
}
void main() {
  Fish nemo = Fish(
    species: "Clown Fish",
    age: 3,
    color: "pink",
    numberOfChildren: 0,
  );

  nemo.printMyName();
  nemo.printMyAge();
  nemo.printMyColor();
  nemo.printMyNumberOfChildren();
  nemo.addMyAge();
  nemo.printMyAge();
  nemo.addMyChildren();
  nemo.printMyNumberOfChildren();
  nemo.changeMycolor();
  nemo.printMyColor();

  nemo.changeMySpecies("Nuclear Poisoned Water Species");
  nemo.printMyName();

  nemo.changeMySpecies("Salted Water Species");
  nemo.printMyName();

  nemo.changeMySpecies("Fresh Water Species");
  nemo.printMyName();

  nemo.changeMySpecies("Reptile Species");
  nemo.printMyName();

  nemo.setMyAge(3);
  nemo.printMyAge();

  nemo.setMyChildren(5);
  nemo.printMyNumberOfChildren();

  nemo.setMyColor("blue");
  nemo.printMyColor();

  }
