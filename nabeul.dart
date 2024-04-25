import 'package:flutter/material.dart';

class Nabeul extends StatefulWidget {
  const Nabeul({super.key});

  @override
  State<Nabeul> createState() => _NabeulState();
}

class _NabeulState extends State<Nabeul> {
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
                image: AssetImage('images/nabelll.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Nabeul est une ville du nord-est de la Tunisie, située au sud de la péninsule du cap Bon, à une soixantaine de kilomètres au sud-est de Tunis",
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
