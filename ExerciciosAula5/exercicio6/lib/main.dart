import 'package:flutter/material.dart';

void main() {
  runApp(LayoutTutorialApp());
}

class LayoutTutorialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout Tutorial',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LayoutTutorialPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LayoutTutorialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Image.network(
            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
            width: double.infinity,
            height: 240,
            fit: BoxFit.cover,
          ),
          titleSection(),
          buttonSection(context),
          textSection(),
        ],
      ),
    );
  }

  Widget titleSection() {
    return Padding(
      padding: EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Oeschinen Lake Campground',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 8),
                Text(
                  'Kandersteg, Switzerland',
                  style: TextStyle(color: Colors.grey[500]),
                ),
              ],
            ),
          ),
          Icon(Icons.star, color: Colors.red[500]),
          SizedBox(width: 4),
          Text('41'),
        ],
      ),
    );
  }

  Widget buttonSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildButtonColumn(Icons.call, 'CALL'),
          buildButtonColumn(Icons.near_me, 'ROUTE'),
          buildButtonColumn(Icons.share, 'SHARE'),
        ],
      ),
    );
  }

  Widget buildButtonColumn(IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: Colors.blue),
        SizedBox(height: 8),
        Text(label, style: TextStyle(color: Colors.blue)),
      ],
    );
  }

  Widget textSection() {
    return Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
        'Alps. Situated 1,578 meters above sea level, it is one of the '
        'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
        'half-hour walk through pastures and pine forest, leads you to the lake, '
        'which warms to 20 degrees Celsius in the summer. Activities enjoyed here '
        'include rowing, and riding the summer toboggan run.',
        softWrap: true,
      ),
    );
  }
}