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
      "title": "Task 2022-07-09 18:08:31.${index + 734244}",
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
        title: Text("Kindacode.com"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text("View Completed Tasks"),
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
        child: Icon(Icons.add),
      ),
    );
  }
}