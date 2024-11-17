import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Center(
            child: Text(
              "Dicee App",
              style:
              TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
          backgroundColor: Colors.teal,
        ),
        body: DiceeApp(),
      ),
    ),
  );
}


class DiceeApp extends StatefulWidget {
  const DiceeApp({super.key});

  @override
  State<DiceeApp> createState() => _DiceeAppState();
}

class _DiceeAppState extends State<DiceeApp> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  void changeDiceFaces

  (){
    setState(() {
      leftDiceNumber = Random().nextInt(6)+1;
      rightDiceNumber = Random().nextInt(6)+1;
    });
  }



  @override
  Widget build(BuildContext context) {


  return Center(

  child: Row(
  children: [
  Expanded(
  child: Padding(
  padding: const EdgeInsets.all(16.0),
  child: TextButton(onPressed: (){
  changeDiceFaces();


  }, child: Image.asset('images/dice$leftDiceNumber.png'))
  ,
  ),
  ),

  Expanded(
  child: Padding(
  padding: const EdgeInsets.all(16.0),
  child: TextButton(onPressed: (){
  changeDiceFaces();


  }, child: Image.asset("images/dice$rightDiceNumber.png"),),
  ),
  ),
  ],
  ),
  );
  }
}

