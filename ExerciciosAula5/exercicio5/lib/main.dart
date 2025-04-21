import 'package:flutter/material.dart';

void main() {
  runApp(LayoutConstraintsDemo());
}

class LayoutConstraintsDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Constraints',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Layout Constraints')),
        body: ListView(
          children: [
            sectionTitle('Exemplo 1: ConstrainedBox'),
            ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: 100,
                minHeight: 100,
                maxWidth: 200,
              ),
              child: Container(
                color: Colors.amber,
                child: Text('Box limitado (100x100 até 200x∞)'),
              ),
            ),
            divider(),

            sectionTitle('Exemplo 2: UnconstrainedBox'),
            UnconstrainedBox(
              child: Container(
                width: 300,
                height: 100,
                color: Colors.green,
                child: Center(child: Text('UnconstrainedBox > 300px')),
              ),
            ),
            divider(),

            sectionTitle('Exemplo 3: SizedBox'),
            SizedBox(
              width: 150,
              height: 80,
              child: Container(
                color: Colors.blue,
                child: Center(child: Text('SizedBox 150x80')),
              ),
            ),
            divider(),

            sectionTitle('Exemplo 4: OverflowBox'),
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
              child: OverflowBox(
                maxWidth: 200,
                maxHeight: 200,
                child: Container(
                  width: 180,
                  height: 180,
                  color: Colors.black,
                  child: Center(
                    child: Text('OverflowBox'),
                  ),
                ),
              ),
            ),
            divider(),

            sectionTitle('Exemplo 5: LimitedBox'),
            LimitedBox(
              maxHeight: 100,
              child: Container(
                color: Colors.teal,
                child: Text('LimitedBox com altura máxima 100'),
              ),
            ),
            divider(),
          ],
        ),
      ),
    );
  }

  Widget sectionTitle(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16),
      child: Text(text, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
    );
  }

  Widget divider() => Divider(color: Colors.white);
}