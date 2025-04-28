//Material Design = criado pela google, cores e formatos prontos, alinhamento e espaçamento definidos
//Design Adaptável = Material Components Widgets = Esstrutura, botões, selecionáveis, painéis, displays, layout, etc
//Para dispositivos da Apple = Cupertino
//Cores e formatos padronizados, funções e animações como devem ser na apple.
//Cupertino (IOS-Stule Widgets) = Transições, botões, selecionáveis
//Formatos mais predefinidos. Não é obrigado usar eles para cada um, mas é legal.

//Como definir uma cor no Flutter?
//Quanto tem de cada cor de acordo com o numero
//Tem de 0 a 255 com valores de branco, vermelho, verde e azul
//ARGB = Alpha(branco), Red, Green, Blue (255,24,117,232)

//Existem 4 tipos básicos de imagens:
// - Assets: Arquivo da imagem está dentro do próprio projeto
// - Network: Arquivo de imagem da internet
// - File: Arquivo está dentro do dispositivo
// - Memory: Arquvo está dentro da memória do dispositivo

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(leading: Container(), title: Text('Tarefas')),
        body: ListView(
          children: [
            Task(
              nome: "Aprender Flutter",
              foto:
                  "https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large",
            ),
            Task(nome: "Andar de Bike", foto: 'https://images.pexels.com/photos/161172/cycling-bike-trail-sport-161172.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
            Task(nome: "Meditar", foto: 'https://thebogotapost.com/wp-content/uploads/2017/06/636052464065850579-137719760_flyer-image-1.jpg'),
            Task(nome: "Ler", foto: 'https://manhattanmentalhealthcounseling.com/wp-content/uploads/2019/06/Top-5-Scientific-Findings-on-MeditationMindfulness-881x710.jpeg'),
            Task(nome: "Jogar", foto: 'https://i.ibb.co/tB29PZB/kako-epifania-2022-2-c-pia.jpg'),

          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {}),
      ),
    );
  }
}

//stless
class Task extends StatefulWidget {
  final String nome;
  final String foto;

  const Task({Key? key, required this.nome, required this.foto})
    : super(key: key);

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
            Container(color: Colors.blue, height: 140),
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
                        width: 72,
                        height: 100,
                        child: Image.network(widget.foto, fit: BoxFit.cover),
                      ),
                      Container(
                        width: 200,
                        child: Text(
                          widget.nome,
                          style: TextStyle(
                            fontSize: 24,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      Container(
                        height: 65,
                        width: 65,
                        child: ElevatedButton(
                          //Deixando o formato quadrado, já que por padrao vem circular
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0),
                            ),
                          ),
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
                              Icon(Icons.arrow_drop_up, color: Colors.white),
                              Text(
                                'UP',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: LinearProgressIndicator(
                          color: Colors.white,
                          value: nivel / 10,
                        ),
                        width: 200,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Nivel: $nivel',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
