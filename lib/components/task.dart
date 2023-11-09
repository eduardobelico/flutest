import 'package:flutest/components/difficulty.dart';
import 'package:flutter/material.dart';

class Task extends StatefulWidget {
  final String nome;
  final String foto;
  final int dificuldade;

  Task(this.nome, this.foto, this.dificuldade, {super.key});

  int nivel = 0;
  int constantNivel = 0;

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {

  bool levelMax = false;

  bool assetOrNetwork() {
    if (widget.foto.contains('http')) {
      return false;
    }
    return true;
  }

  maestryColor() {
    if (widget.constantNivel >= widget.dificuldade * 10 &&
        widget.constantNivel < widget.dificuldade * 20) {
      return Colors.green;
    } else if (widget.constantNivel >= widget.dificuldade * 20 &&
        widget.constantNivel < widget.dificuldade * 30) {
      return Colors.amberAccent;
    } else if (widget.constantNivel >= widget.dificuldade * 30 &&
        widget.constantNivel < widget.dificuldade * 40) {
      return Colors.orange;
    } else if (widget.constantNivel >= widget.dificuldade * 40 &&
        widget.constantNivel < widget.dificuldade * 50) {
      return Colors.red;
    } else if (widget.constantNivel >= widget.dificuldade * 50 &&
        widget.constantNivel < widget.dificuldade * 60) {
      return Colors.purple;
    } else if (widget.constantNivel >= widget.dificuldade * 60) {
      return Colors.black;
    } else {
      return Colors.blueGrey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4), color: maestryColor()),
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
                            child: assetOrNetwork()
                                ? Image.asset(
                                    widget.foto,
                                    fit: BoxFit.cover,
                                  )
                                : Image.network(
                                    widget.foto,
                                    fit: BoxFit.cover,
                                  ))),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            width: 200,
                            child: Text(
                              widget.nome,
                              style: const TextStyle(
                                  fontSize: 24,
                                  overflow: TextOverflow.ellipsis),
                            )),
                        Difficulty(
                          dificultyLevel: widget.dificuldade,
                        ),
                      ],
                    ),
                    SizedBox(
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
                              widget.nivel++;
                              widget.constantNivel++;
                              if (widget.nivel == widget.dificuldade * 10) {
                                widget.nivel = 0;
                              } else if (widget.constantNivel >=
                                  widget.dificuldade * 60) {
                                levelMax = true;
                              }
                            });
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
                    child: SizedBox(
                        width: 200,
                        child: LinearProgressIndicator(
                          color: Colors.white,
                          value: (widget.dificuldade > 0)
                              ? (widget.nivel / widget.dificuldade) / 15
                              : 1,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text('Nível: ${widget.nivel}',
                        style:
                            const TextStyle(color: Colors.white, fontSize: 16)),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
