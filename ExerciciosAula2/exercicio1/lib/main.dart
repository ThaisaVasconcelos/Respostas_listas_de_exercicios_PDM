import 'package:flutter/material.dart';

void main() => runApp(MainApp());

// void main() {
// runApp(MainApp());
// }

class MainApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme; // Acessa o tema padrão para textos da árvore de widgets
    final mediaQuery = MediaQuery.of(context); // Acessa informações da tela
    final alturaTela = mediaQuery.size.height; // Altura da tela
    final comprimentoTela = mediaQuery.size.width; // Largura da tela


    return MaterialApp(
      title: "MeuApp",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(
            "Flutter is Fun!",
            style: TextStyle(color: Colors.white)
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 90.0, left: 100.0),
          child: Container(
            margin: const EdgeInsets.all(10.0),
            color: Colors.red,
            width: 100.0,
            height: 100.0,
            child: Padding(
              padding: EdgeInsets.only(top: 1.0, left: 0.0),
              child: Text(
                " Hi Mom 🐣",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}