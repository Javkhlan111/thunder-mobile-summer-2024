class Variables {
  int x = 6;
  int y = 5;

  bool unen = true;
  bool hudal = true;

  String myName = "Javkhlan";

  double pi = 3.14;

  Horse tomsk = Horse(name:'Tomsk');
}

class Horse{
  String name;
  Horse({required this.name});
}