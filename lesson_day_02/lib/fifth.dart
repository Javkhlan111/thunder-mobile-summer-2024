class Bird {
  bool canSing;
  bool canFly;

  Bird({required this.canFly, required this.canSing});

}

void main(){
  Bird penguin = Bird(canFly: false, canSing: true);
  print(penguin.canSing);
  print(penguin.canFly);

  Bird owl = Bird(canFly: true, canSing: false);
  print(owl.canSing);
  print(owl.canFly);

  Bird blackswam = Bird(canFly: true, canSing: false);
  print(blackswam.canSing);
  print(blackswam.canFly);

}