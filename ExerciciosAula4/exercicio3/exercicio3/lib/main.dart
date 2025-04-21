import 'package:flutter/material.dart';

void main() {
  runApp(MyTaskApp());
}

class MyTaskApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TaskHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TaskHomePage extends StatefulWidget {
  @override
  _TaskHomePageState createState() => _TaskHomePageState();
}

class _TaskHomePageState extends State<TaskHomePage> {
  List<Map<String, dynamic>> tasks = List.generate(5, (index) {
    return {
      "title": "Task 2022-07-09 \n18-08:31.${index + 734244}",
      "isChecked": false,
    };
  });

  void _showDialog() {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text("Bem-vindo!"),
        content: Text("Você está no App de Notas de Tarefas"),
        actions: [
          TextButton(
            child: Text("OK"),
            onPressed: () => Navigator.of(context).pop(),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kindacode.com",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,              // Fundo azul
                shape: RoundedRectangleBorder(             // Borda quadrada
                  borderRadius: BorderRadius.zero,
                ),
              ),
              child: Text(
                "View Completed Tasks",
                style: TextStyle(color: Colors.white),     // Texto branco (opcional)
              ),
            ),
            SizedBox(height: 10),
            Text(
              "You have ${tasks.length} uncompleted tasks",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: tasks.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.amber[300],
                    child: ListTile(
                      title: Text(tasks[index]["title"]),
                      trailing: Checkbox(
                        value: tasks[index]["isChecked"],
                        onChanged: (bool? value) {
                          setState(() {
                            tasks[index]["isChecked"] = value ?? false;
                          });
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showDialog,
        backgroundColor: Colors.blue,            // Fundo azul
        shape: const CircleBorder(),             // Formato redondo
        child: Text(
          "+",
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,                 // Texto branco
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}