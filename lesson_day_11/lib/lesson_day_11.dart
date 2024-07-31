class LogicalAndOperator {
  bool stateOne;
  bool stateTwo;

  LogicalAndOperator({required this.stateOne, required this.stateTwo});

  bool calculateAndOperator(){
    return stateTwo && stateOne;
  }
}

class LogicalOrOperator {
  bool staterOne;
  bool staterTwo;

  LogicalOrOperator({required this.staterOne, required this.staterTwo});

  bool calculateOrOperator(){
    return staterTwo || staterOne;
  }
}

class LogicalNotOperator {
  bool stateOne;

  LogicalNotOperator({required this.stateOne});

  bool calculateNotOperator(){
    return !stateOne;
  }
}



void main(){
  LogicalAndOperator trueTrueState = LogicalAndOperator(stateOne: true,
      stateTwo: true);
  bool result01 = trueTrueState.calculateAndOperator();
  print(result01);

  LogicalAndOperator trueFalseState = LogicalAndOperator(stateOne: true,
      stateTwo: false);
  bool result02 = trueFalseState.calculateAndOperator();
  print(result02);

  LogicalAndOperator falseTrueState = LogicalAndOperator(stateOne: false,
      stateTwo: true);
  bool result03 =  falseTrueState.calculateAndOperator();
  print(result03);

  LogicalAndOperator falseFalseState = LogicalAndOperator(stateOne: false,
      stateTwo: false);
  bool result04 = falseFalseState.calculateAndOperator();
  print(result04);
  print("------------------");
  LogicalOrOperator trueTrueStater = LogicalOrOperator(staterOne: true,
      staterTwo: true);
  bool result11 = trueTrueStater.calculateOrOperator();
  print(result11);

  LogicalOrOperator trueFalseStater = LogicalOrOperator(staterOne: true,
      staterTwo: false);
  bool result12 = trueFalseStater.calculateOrOperator();
  print(result12);

  LogicalOrOperator falseTrueStater = LogicalOrOperator(staterOne: false,
      staterTwo: true);
  bool result13 = falseTrueStater.calculateOrOperator();
  print(result13);

  LogicalOrOperator falseFalseStater = LogicalOrOperator(staterOne: false,
      staterTwo: false);
  bool result14 = falseFalseStater.calculateOrOperator();
  print(result14);
  print("------------------");

  LogicalNotOperator trueState = LogicalNotOperator(stateOne: true);
  bool result15 = trueState.calculateNotOperator();
  print(result15);

  LogicalNotOperator falseState = LogicalNotOperator(stateOne: false);
  bool result16 = falseState.calculateNotOperator();
  print(result16);



}