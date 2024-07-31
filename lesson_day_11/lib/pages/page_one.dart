import 'package:flutter/material.dart';
import 'page_two.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  void changePage(BuildContext context){
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => PageTwo(name: "Khajajaajja")));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Display Name on Page Two", style: TextStyle(
                  color: Colors.red,
                backgroundColor: Colors.cyanAccent,
                fontSize: 30
              ),),

              TextButton(onPressed: (){changePage(context);},
          child: Text(
            "Click me", style: TextStyle(fontSize: 30)
          ))
            ],
          ),
        ),
      ),
    );
  }
}
