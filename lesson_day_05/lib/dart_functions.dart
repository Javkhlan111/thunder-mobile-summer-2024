class Box{
  String name = "Box";
  Box(this.name);

  void printMyName(){
    print(name);
    print(2+3);
    print("this is my class function");
  }
}

void main(){
  print('object');
  Box myRedBox = Box("red box");
  print(myRedBox.name);

  myRedBox.printMyName();
}