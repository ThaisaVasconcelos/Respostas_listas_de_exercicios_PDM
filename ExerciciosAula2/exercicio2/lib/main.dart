import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MeuApp',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 220, 238, 246),
        title: const Center(
          child: Text(
            'My Home Page',
            style: TextStyle(fontSize: 30),
          ),
        )
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const Text(
              'Hello, World!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blueAccent),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: 200,
              height: 40,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                child: const Text(
                  'A button',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
              ),
            )
          ],
        ),
      ),
    );
  }
}