import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Cats Grid 2x2'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            children: [
              GridTile(
                footer: const GridTileBar(
                  backgroundColor: Colors.black54,
                  title: Text(
                    'Smart Cat',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.amberAccent,
                    ),
                  ),
                ),
                child: Image.network(
                  'https://picsum.photos/400/400?random=1',
                  fit: BoxFit.cover,
                ),
              ),

              GridTile(
                footer: const GridTileBar(
                  backgroundColor: Colors.blueGrey,
                  title: Text(
                    'Italic Cat',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      letterSpacing: 2.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                child: Image.network(
                  'https://picsum.photos/400/400?random=2',
                  fit: BoxFit.cover,
                ),
              ),

              GridTile(
                footer: const GridTileBar(
                  backgroundColor: Colors.deepOrangeAccent,
                  title: Text(
                    'Light Style',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 14,
                    ),
                  ),
                ),
                child: Image.network(
                  'https://picsum.photos/400/400?random=3',
                  fit: BoxFit.cover,
                ),
              ),

              GridTile(
                footer: const GridTileBar(
                  backgroundColor: Colors.purple,
                  title: Text(
                    'Shadow Cat',
                    style: TextStyle(
                      fontSize: 16,
                      shadows: [
                        Shadow(
                          color: Colors.black,
                          blurRadius: 6,
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
                  ),
                ),
                child: Image.network(
                  'https://picsum.photos/400/400?random=4',
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}