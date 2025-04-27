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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Container(
        color: Colors.grey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(color: Colors.blue, width: 100, height: 100),
                Container(color: Colors.pinkAccent, width: 50, height: 50),
              ],
            ),
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(color: Colors.blue, width: 100, height: 100),
                Container(color: Colors.red, width: 50, height: 50),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(color: Colors.cyan, height: 50, width: 50),
                Container(color: Colors.pinkAccent, height: 50, width: 50),
                Container(color: Colors.purple, height: 50, width: 50),
              ],
            ),
            Container(
              color: Colors.amber,
              height: 30,
              width: 300,
              child: Text(
                'Diamante Amarelo',
                style: TextStyle(color: Colors.black, fontSize: 28),
                textAlign: TextAlign.center,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print('Você apertou o Botão');
              },
              child: Text('Aperte o botão!'),
            ),
          ],
        ),
      ),
    );
  }
}
