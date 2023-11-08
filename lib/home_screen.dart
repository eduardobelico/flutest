import 'package:flutest/task.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text(
          'Tarefas',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: AnimatedOpacity(
        opacity: opacidade ? 1 : 0,
        duration: const Duration(milliseconds: 800),
        child: ListView(
          children: const [
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
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}