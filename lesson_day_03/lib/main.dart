import 'package:flutter/material.dart';
import 'person.dart';
import 'animal.dart';

void main() {
  Person khangai = Person("Khangai", 42);
  Person Muugii = Person("Munkh-Iveel", 16);
  Person dashaa = Person("Dashbyamba", 23);

  Animal dove = Animal(name: "Kiki", age: 5, species: "bird");
  dove.age = 2;
  print(dove.age);
  Animal salmon = Animal(name: "Choco", age: 6, species: 'fish');
  print(salmon.name);
  salmon.name = "yargai";
  print(salmon.name);
  Animal tiger = Animal(name: "barka", age: 5, species: 'cat');

  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Color(0xff75e4d9),
        appBar: AppBar(
            title: Text("Lesson day 03"),
            leading: IconButton(
              icon: Icon(Icons.thumb_up_rounded),
              onPressed: () {},
            ),
            actions: [
              IconButton(
                  icon: Icon(Icons.access_alarm), onPressed: () {  },
              ),
            ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/3.jpg"),
                      fit: BoxFit.cover
                    )
                  ),
                  child: Center(
                      child: Text(
                          khangai.name, style: TextStyle(fontSize: 45.5))),
                ),
              Text(Muugii.name, style: TextStyle(fontSize: 30, color: Colors.cyanAccent)),
                Padding(padding: EdgeInsets.only(top: 50)),
                Text(dove.name, style: TextStyle(fontSize: 30)),
                SizedBox(height: 50, )
                Text(salmon.name, style: TextStyle(fontSize: 30)),
                Text(tiger.name, style: TextStyle(fontSize: 30)),
                Image.network('https://images.unsplash.com/photo-1695128782705-e8a6a49ea5ed?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                Image.asset('assets/images/1.jpg'),
                Image.asset('assets/images/2.jpg'),
                Image.asset('assets/images/3.jpg')

              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {  },
        ),
    ),
  ));
}
