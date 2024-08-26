import 'dart:convert';

import 'package:flutter/material.dart';
import 'pizza.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter JSON Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter JSON Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String pizzaString = "";
  List<Pizza> myPizzas = [];

  Future<List<Pizza>> readJsonFile() async {
    String data = await
        DefaultAssetBundle.of(context).loadString("assets/pizzalist.json");
    List pizzaMapList = jsonDecode(data);
    // List<Pizza> myPizzas = [];
    for (var pizza in pizzaMapList) {
      Pizza myPizza = Pizza.fromJson(pizza);
      myPizzas.add(myPizza);
    }
    // setState(() {
    //   pizzaString = data;
    // });
    return myPizzas;
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    readJsonFile().then((value){
      setState(() {
        myPizzas = value;
      });
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Text("JSON"),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: myPizzas.length,
          itemBuilder: (context, index){
            return ListTile(
              title: Text(myPizzas[index].pizzaName),
              subtitle: Text(myPizzas[index].descirption),
            );
          },
        )
      ),
    );
  }
}