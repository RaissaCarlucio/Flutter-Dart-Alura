//inh, vamos manipular novas tarefas, adicionar elas na pagina principal

//Relembrando, templantes pré-prontos de widgets:
//Stateless = É o mais simples e o mais leve, não precisa de muito para funcionar, é estático;
//Stateful = É o menos simples e precisa do setState para se reconstruir, é dinâmico;
//Inherited = É o mais complexo e está ligado aos dados armazenados e não necessariamente á tela.



import 'package:flutter/material.dart';
import 'package:flutter_alura/components/task.dart';

class TaskInherited extends InheritedWidget {
   TaskInherited({
    super.key,
    required Widget child
  }) : super(child: child);

  final List<Task> taskList = [
    Task(nome: "Aprender Flutter", foto: "assets/images/coruja.png", dificuldade: 3,),
    Task(nome: "Andar de Bike", foto: 'assets/images/bicicleta.jpeg', dificuldade: 2,),
    Task(nome: "Meditar", foto: 'assets/images/ler.jpeg', dificuldade: 5),
    Task(nome: "Ler", foto: 'assets/images/meditar.jpg', dificuldade: 4),
    Task(nome: "Jogar", foto: 'assets/images/jogar.jpg', dificuldade: 1),
  ];

   void newTask(String name, String photo, int difficulty) {
     taskList.add(
       Task(nome: name, foto: photo, dificuldade: difficulty));
   }


  static TaskInherited of(BuildContext context) {
    final TaskInherited? result =
        context.dependOnInheritedWidgetOfExactType<TaskInherited>();
    assert(result != null, 'No TaskInherited found in context');
    return result!;
  }

   // Fica de olho no estado da lista de tarefas
  @override
  bool updateShouldNotify(TaskInherited old) {
    return old.taskList.length != taskList.length; // Se for return true, vai ficar notificando o tempo todo que a informacao nao mudou
  } // se for assim, significa que se a lista atual for diferente da que eu passei agora, ele avisa
}
