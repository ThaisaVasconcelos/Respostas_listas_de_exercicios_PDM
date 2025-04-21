import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: GridViewExample(),
    debugShowCheckedModeBanner: false,
  ));
}

class GridViewExample extends StatelessWidget {
  final List<Map<String, String>> items = [
    {
      "title": "Chennai\nFlower Market",
      "image": "https://picsum.photos/id/1011/400/300"
    },
    {
      "title": "Tanjore\nBronze Works",
      "image": "https://picsum.photos/id/1012/400/300"
    },
    {
      "title": "Tanjore\nMarket",
      "image": "https://picsum.photos/id/1013/400/300"
    },
    {
      "title": "Tanjore\nThanjavur Temple",
      "image": "https://picsum.photos/id/1015/400/300"
    },
    {
      "title": "Tanjore\nThanjavur Temple",
      "image": "https://picsum.photos/id/1016/400/300"
    },
    {
      "title": "Pondicherry\nSalt Farm",
      "image": "https://picsum.photos/id/1018/400/300"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GridView'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: items.map((item) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(
                    item['image']!,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      color: Colors.black.withOpacity(0.5), // fundo clarinho
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        item['title']!,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}