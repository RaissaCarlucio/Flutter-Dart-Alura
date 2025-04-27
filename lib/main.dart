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
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(title: Text('Tarefas')),
        body: Container(
          child: Stack(
            children: [
              Container(color: Colors.blue, height: 140),
              Container(
                color: Colors.white,
                height: 100,
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                  children: [
                    Container(color: Colors.black26, width: 72, height: 100),
                    Text('Aprender Flutter'),
                    ElevatedButton(onPressed: (){}, child: Icon(Icons.arrow_drop_up))
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {}),
      ),
    );
  }
}
