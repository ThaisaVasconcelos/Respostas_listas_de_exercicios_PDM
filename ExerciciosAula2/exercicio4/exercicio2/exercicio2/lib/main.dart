import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FABCenterDemo(),
    );
  }
}

class FABCenterDemo extends StatefulWidget {
  @override
  _FABCenterDemoState createState() => _FABCenterDemoState();
}

class _FABCenterDemoState extends State<FABCenterDemo> {
  int _selectedIndex = 2;
  bool _isExpanded = false;

  void _onTabSelected(int index) {
    setState(() {
      _selectedIndex = index;
      _isExpanded = false;
    });
  }

  void _toggleFabMenu() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  Widget _buildOption(IconData icon, VoidCallback onPressed) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: FloatingActionButton(
        mini: true,
        shape: const CircleBorder(),
        onPressed: onPressed,
        child: Icon(icon, color: Colors.blue),
        heroTag: icon.toString(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BottomAppBar with FAB",
        style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text('TAB: $_selectedIndex', style: TextStyle(fontSize: 24)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (_isExpanded) ...[
            _buildOption(Icons.message, () => print('Message pressed')),
            _buildOption(Icons.email, () => print('Email pressed')),
            _buildOption(Icons.phone, () => print('Phone pressed')),
          ],
          FloatingActionButton(
            onPressed: _toggleFabMenu,
            backgroundColor: Colors.blue,
            shape: const CircleBorder(),
            child: Icon(Icons.add, color: Colors.white),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 6.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildTabButton(icon: Icons.menu, index: 0, label: "This"),
            _buildTabButton(icon: Icons.layers, index: 1, label: "Is"),
            SizedBox(width: 40), // espaço reservado para o FAB central
            _buildTabButton(icon: Icons.grid_on, index: 3, label: "Bottom"),
            _buildTabButton(icon: Icons.error, index: 4, label: "Bar", color: Colors.red),
          ],
        ),
      ),
    );
  }

  Widget _buildTabButton({required IconData icon, required int index, required String label, Color? color}) {
    return MaterialButton(
      minWidth: 40,
      onPressed: () => _onTabSelected(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: _selectedIndex == index ? (color ?? Colors.blue) : Colors.grey),
          Text(label, style: TextStyle(color: _selectedIndex == index ? (color ?? Colors.blue) : Colors.grey, fontSize: 12)),
        ],
      ),
    );
  }
}