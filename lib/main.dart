import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Dice App'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.black,
      ),
      body: const MyApp(),
    ),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftCard = 1;
  int rightCard = 1;
  void changeDice() {
    setState(() {
      leftCard = Random().nextInt(6) + 1;
      rightCard = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: TextButton(
                onPressed: () {
                  changeDice();
                },
                child: Image.asset('images/dice$leftCard.png')),
          ),
          Expanded(
            child: TextButton(
                onPressed: () {
                  changeDice();
                },
                child: Image.asset('images/dice$rightCard.png')),
          ),
        ],
      ),
    );
  }
}
