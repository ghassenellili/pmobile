import 'package:flutter/material.dart';

class Sousse extends StatefulWidget {
  const Sousse({super.key});

  @override
  State<Sousse> createState() => _SousseState();
}

class _SousseState extends State<Sousse> {
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
                image: AssetImage('images/sousse.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Sousse est une ville portuaire de l'Est de la Tunisie, située à 143 kilomètres au sud de Tunis, et ouverte sur le golfe d'Hammamet. ",
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
