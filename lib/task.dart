import 'package:flutest/difficulty.dart';
import 'package:flutter/material.dart';

class Task extends StatefulWidget {
  final String nome;
  final String foto;
  final int dificuldade;

  const Task(this.nome, this.foto, this.dificuldade, {super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int nivel = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4), color: Colors.blue),
              height: 140,
            ),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.white),
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.black26),
                          height: 100,
                          width: 72,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(4),
                            child: Image.network(
                              widget.foto,
                              fit: BoxFit.cover,
                            ),
                          )),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              width: 200,
                              child: Text(
                                widget.nome,
                                style: const TextStyle(
                                    fontSize: 24,
                                    overflow: TextOverflow.ellipsis),
                              )),
                          Difficulty(
                            dificultyLevel: widget.dificuldade,),
                        ],
                      ),
                      Container(
                        height: 62,
                        width: 70,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                                shape: const RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(2)),
                                )),
                            onPressed: () {
                              setState(() {
                                nivel++;
                              });
                              print(nivel);
                            },
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.arrow_drop_up,
                                  color: Colors.white,
                                ),
                                Text(
                                  'UP',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white),
                                )
                              ],
                            )),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(
                          width: 200,
                          child: LinearProgressIndicator(
                            color: Colors.white,
                            value: (widget.dificuldade > 0)
                                ? (nivel / widget.dificuldade) / 15
                                : 1,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text('Nível: $nivel',
                          style: TextStyle(color: Colors.white, fontSize: 16)),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}


