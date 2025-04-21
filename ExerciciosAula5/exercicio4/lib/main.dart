import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Layouts',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(),
    );
  }
}

class ResponsiveLayout extends StatelessWidget {
  final List<String> menuItems = ['Dart', 'JavaScript', 'PHP', 'C++'];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          // Modo retrato
          return Scaffold(
            appBar: AppBar(title: Text('Responsive Layouts')),
            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text('Cheetah Coding', style: TextStyle(fontSize: 24)),
                      SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          buildSquareButton('BUTTON 1'),
                          SizedBox(width: 16),
                          buildSquareButton('BUTTON 2'),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(color: Colors.white),
                ...menuItems.map(
                  (item) => Column(
                    children: [
                      Center(
                        child: Text(
                          item,
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                      Divider(color: Colors.white),
                    ],
                  ),
                ),
              ],
            ),
          );
        } else {
          // Modo paisagem
          return Scaffold(
            appBar: AppBar(title: Text('Responsive Layouts')),
            body: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Cheetah Coding', style: TextStyle(fontSize: 28),),
                        SizedBox(height: 24),
                        buildSquareButton('BUTTON 1'),
                        SizedBox(height: 16),
                        buildSquareButton('BUTTON 2'),
                      ],
                    ),
                  ),
                ),
                VerticalDivider(color: Colors.white),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: menuItems
                        .map(
                          (item) => Column(
                            children: [
                              Center(
                                child: Text(
                                  item,
                                  style: TextStyle(fontSize: 18, color: Colors.white),
                                ),
                              ),
                              Divider(color: Colors.white),
                            ],
                          ),
                        )
                        .toList(),
                  ),
                ),
              ],
            ),
          );
        }
      },
    );
  }

  Widget buildSquareButton(String label) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero, // quadrado
        ),
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      onPressed: () {},
      child: Text(label),
    );
  }
}