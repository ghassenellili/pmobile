import 'package:flutter/material.dart';

class SidiBouSaid extends StatefulWidget {
  const SidiBouSaid({super.key});

  @override
  State<SidiBouSaid> createState() => _SidiBouSaidState();
}

class _SidiBouSaidState extends State<SidiBouSaid> {
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
                image: AssetImage('images/sidibou.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Sidi Bou Saïd Célèbre pour ses rues pavées et ses maisons bleues et blanches, Sidi Bou Saïd est un village pittoresque installé sur un promontoire qui surplombe la mer Méditerranée. Des cafés en plein air, des restaurants tunisiens et des petites galeries d'art sont également parsemés sur les hauteurs. Construit au début du XXe siècle, le palais Ennejma Ezzahra est agrémenté d'arches, de mosaïques et d'éléments en stuc richement décorés, et la demeure historique Dar el-Annabi abrite des personnages de cire vêtus de costumes traditionnels. Un port de plaisance se trouve à côté d'une plage de sable.",
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
