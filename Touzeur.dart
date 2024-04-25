import 'package:flutter/material.dart';

class Touzeur extends StatefulWidget {
  const Touzeur({super.key});

  @override
  State<Touzeur> createState() => _TouzeurState();
}

class _TouzeurState extends State<Touzeur> {
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
                image: AssetImage('images/Tozeur.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Tozeur est une ville tunisienne aux confins de l'Atlas et du désert du Sahara, la plus grande des cinq oasis que compte le Jérid. Progressivement construite autour de sa palmeraie, elle est le chef-lieu du gouvernorat du même nom. ",
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
