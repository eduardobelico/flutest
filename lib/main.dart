import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(color: Colors.white, width: 200, height: 200,),
              Container(color: Colors.cyan,width: 100, height: 100,),
            ],
          ),
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(color: Colors.amber, width: 200, height: 200,),
              Container(color: Colors.teal,width: 100, height: 100,),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(color: Colors.greenAccent, width: 50, height: 50,),
              Container(color: Colors.deepOrangeAccent, width: 50, height: 50,),
              Container(color: Colors.pinkAccent, width: 50, height: 50,),
            ],)
        ],
      ),
    );
  }
}

/**
 * Stack(
    alignment: AlignmentDirectional.center,
    children: [
    Container(color: Colors.white, width: 300, height: 300,),
    Container(color: Colors.cyan,width: 100, height: 100,),
    ],
    )
 * Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisSize: MainAxisSize.max,
    children: [
    Container(color: Colors.white, width: 300, height: 300,),
    Container(color: Colors.cyan,width: 100, height: 100,),
    ],
    )
 *  Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    Container(color: Colors.white, width: 200, height: 200,),
    Container(color: Colors.cyan,width: 100, height: 100,),
    ],
    )
 */

