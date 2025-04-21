import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App com Tema Azul',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blue, // Define o fundo da tela como azul
        primarySwatch: Colors.blue, // Cor principal da app bar, botões etc.
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Temas'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Teste',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white, // Para destacar sobre o fundo azul
          ),
        ),
      ),
    );
  }
}