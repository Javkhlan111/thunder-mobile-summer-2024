import 'package:flutter/material.dart';
import 'package:project_one/pages/page_four.dart';
import 'package:project_one/widgets/input.dart';
import '../widgets/bar.dart';
import '../widgets/gradient_letter.dart';
import '../widgets/gradient_text.dart';
import 'page_three.dart';
import 'package:word_search_safety/word_search_safety.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key, this.name});
  final name;

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  final nameEditingController = TextEditingController();
  String name = "";
  bool isReady = false;

  void start() {
    setState(() {
      isReady = true;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/images/back2.png"),
              fit: BoxFit.cover,
              alignment: Alignment.topCenter,
            )),
            width: double.infinity,
            child: Column(
              children: [
                NavBar(),
                SizedBox(
                  height: 97,
                ),
                Image.asset("assets/images/icodeGuyHead.png"),
                SizedBox(
                  height: 29.7,
                ),
                GradientText("Player name", 25),
                SizedBox(height: 8),
                Container(
                  width: 310,
                  height: 50,
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(
                    controller: nameEditingController,
                    cursorColor: Color(0xFFFFA500),
                    style: TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide.none,
                        ),
                        hintText: "Type here",
                        hintStyle: TextStyle(
                          color: Color(0xFFE76A01),
                          fontSize: 18,
                          fontFamily: "Nunito",
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        suffixIcon: IconButton(
                          onPressed: () {
                            nameEditingController.clear();
                          },
                          icon: Icon(Icons.clear),
                          color: Colors.orange,
                        )),
                    onSubmitted: (text) {
                      setState(() {
                        name = text;
                        start();
                      });
                    },
                  ),
                ),
                SizedBox(height: 28),
                if (isReady)
                  Container(
                      width: 310,
                      height: 60,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xFFE76A01), Color(0xFFF99440)],
                          begin: Alignment(1, 0.02),
                          end: Alignment(-1, -0.02),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => PageThree(
                               name: nameEditingController.text,
                              )));
                        },
                        child: Text(
                          "START",
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                        style: TextButton.styleFrom(),
                      )),
              ],
            )),
      ),
    ));
  }
}
