import 'package:flutter/material.dart';

class Mahdia extends StatefulWidget {
  const Mahdia({super.key});

  @override
  State<Mahdia> createState() => _MahdiaState();
}

class _MahdiaState extends State<Mahdia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Text('Country Benefits'),
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/mahdia.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Mahdia est une ville côtière tunisienne située au centre-est du pays, à environ 200 kilomètres au sud de la capitale Tunis. Chef-lieu du gouvernorat du même nom, elle constitue une municipalité comptant 51 833 habitants en 2014",
              style: TextStyle(fontSize: 18),
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(10, (index) {
                return Image.asset('images/image_$index.jpg');
              }),
            ),
          ),
        ],
      ),
    );
  }
}
