import 'package:flutter/material.dart';
import 'package:flutter_alura/components/task.dart';
import 'form_screen.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Container(), title: Text('Tarefas')),
      body: ListView(
        children: [
          Task(
            nome: "Aprender Flutter",
            foto: "assets/images/coruja.png",
            dificuldade: 3,
          ),
          Task(
            nome: "Andar de Bike",
            foto: 'assets/images/bicicleta.jpeg',
            dificuldade: 2,
          ),
          Task(nome: "Meditar", foto: 'assets/images/ler.jpeg', dificuldade: 5),
          Task(nome: "Ler", foto: 'assets/images/meditar.jpg', dificuldade: 4),
          Task(nome: "Jogar", foto: 'assets/images/jogar.jpg', dificuldade: 1),
          SizedBox(height: 80),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FormScreen()),
          );
        },
        child: Icon(
          Icons.add,
        ), // Isso é necessário para mostrar um ícone no botão
      ),
    );
  }
}
