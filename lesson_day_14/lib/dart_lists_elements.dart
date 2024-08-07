

class Solution{
  List<String> desserts = ["cookies", 'cupcakes', 'donuts', "pie"];

  void chooseElements(){
    print(desserts);
    print(desserts[0]);
    print(desserts[3]);
    print(desserts[2]);

    String pie = desserts[3];
    print(pie);
  }

  void addElement(){
    desserts.add("Choco cake");
    print(desserts);
    desserts.insert(1, "ice cream");
    print(desserts);
  }

  void changeElement(){
    desserts[2] = "cake";
    print(desserts);
    desserts[5] = "Choco-cake";
    print(desserts);
    desserts[1] = "ice-cream";
    print(desserts);
    desserts[4] = "Pie";
    print(desserts);
  }
  void deleteElement(){
    desserts.remove('donuts');
    desserts.removeAt(0);
    print(desserts);
  }

}



void main(){
  Solution solution = Solution();
  solution.chooseElements();
  solution.addElement();
  solution.changeElement();
  solution.deleteElement();
}