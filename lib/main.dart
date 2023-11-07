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
      home: Scaffold(
        appBar: AppBar(
          leading: Container(),
          title: Text(
            'Tarefas',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          children: [
            Task(
              'Aprender Flutter',
              'https://upload.wikimedia.org/wikipedia/commons/4/4f/Dash%2C_the_mascot_of_the_Dart_programming_language.png',
              3,
            ),
            Task(
                'Andar de Bike',
                'https://aventurasnabike.com.br/wp-content/uploads/2022/05/bicicleta-emagrece.jpg',
                4),
            Task(
                'Viajar',
                'https://i0.statig.com.br/bancodeimagens/ak/k9/vg/akk9vgo89ij6pucqz6uxde7nn.jpg',
                3),
            Task(
                'Meditar',
                'https://organicsnewsbrasil.com.br/wp-content/uploads/2016/04/benefícios-da-ioga.jpg',
                2),
            Task(
                'Ler',
                'https://vidasimples.co/wp-content/uploads/2019/09/vida-simples-como-ler-mais-abre.jpg',
                1),
            Task(
                'Escrever',
                'https://www.pressmanager.com.br/wp-content/uploads/2018/06/escrever-bem.png',
                2),
            Task(
                'Desenhar',
                'https://blog.grafittiartes.com.br/wp-content/uploads/2021/01/desenhar-pessoas.jpg',
                5),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {}, backgroundColor: Colors.blue),
      ),
    );
  }
}

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
              color: Colors.blue,
              height: 140,
            ),
            Column(
              children: [
                Container(
                  color: Colors.white,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          color: Colors.black26,
                          height: 100,
                          width: 72,
                          child: Image.network(
                            widget.foto,
                            fit: BoxFit.cover,
                          )),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              width: 200,
                              child: Text(
                                widget.nome,
                                style: TextStyle(
                                    fontSize: 24,
                                    overflow: TextOverflow.ellipsis),
                              )),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 15,
                                color: (widget.dificuldade >= 1)
                                    ? Colors.blue
                                    : Colors.blue[100],
                              ),
                              Icon(
                                Icons.star,
                                size: 15,
                                color: (widget.dificuldade >= 2)
                                    ? Colors.blue
                                    : Colors.blue[100],
                              ),
                              Icon(
                                Icons.star,
                                size: 15,
                                color: (widget.dificuldade >= 3)
                                    ? Colors.blue
                                    : Colors.blue[100],
                              ),
                              Icon(
                                Icons.star,
                                size: 15,
                                color: (widget.dificuldade >= 4)
                                    ? Colors.blue
                                    : Colors.blue[100],
                              ),
                              Icon(
                                Icons.star,
                                size: 15,
                                color: (widget.dificuldade >= 5)
                                    ? Colors.blue
                                    : Colors.blue[100],
                              ),
                            ],
                          ),
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
                            child: Column(
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
