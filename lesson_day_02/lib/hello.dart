class Cat {
  int age = 4;
  int tail = 1;
  String name = 'Kiki';

}

void main() {
  Cat amur = Cat();
  print(amur.age);
  print(amur.tail);
  print(amur.name);

  print('============');
  Cat Harmuur = Cat();
  Harmuur.age = 9;
  print(Harmuur.age);
  Harmuur.tail = 2;
  print(Harmuur.tail);
  Harmuur.name = 'Harka';

  print('============');

  Cat Tsagaanmuur = Cat();
  print(Harmuur.age);
  print(Tsagaanmuur.age);
}