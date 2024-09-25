
import 'package:flutter/material.dart';
import 'package:primeiro_projeto_flutter/components/task.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        leading: Container(),
        backgroundColor: Colors.blue,
        title: const Text(
          'Tarefas',
        ),
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
      ),
      body: AnimatedOpacity(
        opacity: opacidade ? 1 : 0,
        duration: const Duration(milliseconds: 800),
        child: ListView(
          //scrollDirection: Axis.horizontal,
          children: const [
            Task('Aprender Flutter', 'assets/images/logo.png', 4),
            Task('Andar de Bike', 'assets/images/logo.png', 2),
            Task('Meditar', 'assets/images/logo.png', 5),
            Task('Jogar', 'assets/images/logo.png', 1),
            Task('Cagar', 'assets/images/logo.png', 0),
            Task('Ler', 'assets/images/logo.png', 3),
            SizedBox(height: 80,)
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