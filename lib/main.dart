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
import 'package:flutter_alura/screens/form_screen.dart';
import 'screens/initial_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: FormScreen(),
    );
  }
}










