import 'package:flutter/material.dart';

class Jerba extends StatefulWidget {
  const Jerba({super.key});

  @override
  State<Jerba> createState() => _JerbaState();
}

class _JerbaState extends State<Jerba> {
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
                image: AssetImage('images/jerbaaaa.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Djerba est une île de la côte tunisienne connue pour ses plages méditerranéennes et ses villes blanches du désert influencées par les cultures berbère, arabe, juive et africaine. Sa ville principale est Houmt Souk. Elle est réputée pour ses marchés artisanaux, son port de pêche et sa forteresse du XVIe siècle, Borj el Kebir. Au sud se trouve la synagogue El Ghriba, un lieu de pèlerinage pour les Juifs d'Afrique du Nord",
              style: TextStyle(fontSize: 18),
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(10, (index) {
                return Image.asset('images/');
              }),
            ),
          ),
      
        ],
        
      ),
    );
  }
}
