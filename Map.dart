import 'package:flutter/material.dart';
import 'package:tourisme_app/screens/Country.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/third.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Country()),
                );
              },
              child: Text('>>>>'),
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Colors.blue, // Change the button's background color here
              ),
            ),
          ),
        ],
      ),
    );
  }
}
