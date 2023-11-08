import 'package:flutest/components/task.dart';
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
              'assets/images/Dash.png',
              3,
            ),
            Task(
                'Andar de Bike',
                'assets/images/bike.jpg',
                4),
            Task(
                'Viajar',
                'assets/images/viajar.jpg',
                3),
            Task(
                'Meditar',
                'assets/images/meditar.jpg',
                2),
            Task(
                'Ler',
                'assets/images/ler.jpg',
                1),
            Task(
                'Escrever',
                'assets/images/escrever.png',
                2),
            Task(
                'Desenhar',
                'assets/images/desenhar.jpg',
                5),
            SizedBox(height: 68,)
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