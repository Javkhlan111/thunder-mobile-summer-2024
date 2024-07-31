class Exercise01 {
  bool stateOne;
  bool stateTwo;
  bool stateThree;
  bool stateFour;

  Exercise01({required this.stateOne, required this.stateTwo, required this.stateThree,
  required this.stateFour});

  bool calculateEx01(){
    return stateOne && stateTwo || stateThree || !stateFour;
  }
}


void main() {
  Exercise01 test01 = Exercise01(stateOne: true, stateTwo: false,
      stateThree: true, stateFour: true);
  bool result01 = test01.calculateEx01();
  print(result01);

  Exercise01 test02 = Exercise01(stateOne: false, stateTwo: true,
      stateThree: true, stateFour: false);
  bool result02 = test02.calculateEx01();
  print(result02);

  Exercise01 test03 = Exercise01(stateOne: true, stateTwo: false,
      stateThree: false, stateFour: true);
  bool result03 = test03.calculateEx01();
  print(result03);


}