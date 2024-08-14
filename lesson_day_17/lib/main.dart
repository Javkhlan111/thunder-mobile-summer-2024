import 'package:flutter/material.dart';
import 'word_search_game.dart';



void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("Word Search Game"),
      ),

      body: SafeArea(
        child: WordSearchScreen(),

      ),
    ),
  ),
  );
}



