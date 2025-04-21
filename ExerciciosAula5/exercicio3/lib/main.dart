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
        scaffoldBackgroundColor: Colors.blue, // Tema principal azul
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Usando Theme para sobrescrever apenas a parte desejada
    return Scaffold(
      appBar: AppBar(
        title: Text('Tema Azul'),
        centerTitle: true,
      ),
      body: Theme(
        data: Theme.of(context).copyWith(
          scaffoldBackgroundColor: Colors.yellow, // Novo fundo amarelo
          textTheme: Theme.of(context).textTheme.copyWith(
                bodyLarge: TextStyle(color: Colors.black, fontSize: 20),
              ),
        ),
        child: Builder(
          builder: (context) => Container(
            width: double.infinity,
            height: double.infinity,
            color: Theme.of(context).scaffoldBackgroundColor,
            child: Center(
              child: Text(
                'Teste',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          ),
        ),
      ),
    );
  }
}