import 'package:flutter/material.dart';
import 'package:flutter_alura/components/task.dart';
import 'package:flutter_alura/data/task_inherited.dart';
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
        //Aqui é onde você encontra esse metodo, que pede um contexto e retorna esse objeto
        children: TaskInherited.of(context).taskList,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (contextNew) => FormScreen(taskContext: context,)),
          );
        },
        child: Icon(
          Icons.add,
        ), // Isso é necessário para mostrar um ícone no botão
      ),
    );
  }
}
