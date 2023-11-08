import 'package:flutter/material.dart';

class MyFirstWidget extends StatelessWidget {
  const MyFirstWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                color: Colors.black,
                width: 200,
                height: 200,
              ),
              Container(
                color: Colors.cyan,
                width: 100,
                height: 100,
              ),
            ],
          ),
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                color: Colors.amber,
                width: 200,
                height: 200,
              ),
              Container(
                color: Colors.teal,
                width: 100,
                height: 100,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                color: Colors.greenAccent,
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.deepOrangeAccent,
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.pinkAccent,
                width: 50,
                height: 50,
              ),
            ],
          ),
          Container(
            color: Colors.orange,
            width: 300,
            height: 30,
            child: const Text(
              'Diamante Amarelo',
              style: TextStyle(color: Colors.black, fontSize: 28),
              textAlign: TextAlign.center,
            ),
          ),
          ElevatedButton(onPressed: () {
          }, child: const Text('Aperte o botão!')),
        ],
      ),
    );
  }
}


/**
 * Container(color: Color.fromARGB(255, 24, 117, 232),)
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