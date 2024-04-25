import 'package:flutter/material.dart';
import 'package:tourisme_app/screens/Mahdia.dart';
import 'package:tourisme_app/screens/Sidibousaid.dart';
import 'package:tourisme_app/screens/Touzeur.dart';
import 'package:tourisme_app/screens/jerba.dart';
import 'package:tourisme_app/screens/nabeul.dart';
import 'package:tourisme_app/screens/sousse.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TunisiaDiscoverEase',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Country(),
    );
  }
}

class Country extends StatefulWidget {
  const Country({Key? key}) : super(key: key);

  @override
  State<Country> createState() => _CountryState();
}

class _CountryState extends State<Country> {
  @override
  Widget build(BuildContext context) {
    final List<CountryItem> countryItems = [
      CountryItem(
        name: 'Jerba',
        description: 'Description of Country 1',
        imageUrl: 'images/jerbaaaa.jpg',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Jerba(),
            ),
          );
        },
      ),
      CountryItem(
        name: 'Nabeul',
        description: 'Description of Country 2',
        imageUrl: 'images/nabelll.jpg',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Nabeul(),
            ),
          );
        },
      ),
      CountryItem(
        name: 'Sousse',
        description: 'Description of Country 3',
        imageUrl: 'images/sousse.jpg',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Sousse(),
            ),
          );
        },
      ),
      CountryItem(
        name: 'Sidi Bou Said',
        description: 'Description of Country 4',
        imageUrl: 'images/sidibou.jpg',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SidiBouSaid(),
            ),
          );
        },
      ),
      CountryItem(
        name: 'Mahdia',
        description: 'Description of Country 5',
        imageUrl: 'images/mahdia.png',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Mahdia(),
            ),
          );
        },
      ),
      CountryItem(
        name: 'Touzeur',
        description: 'Description of Country 6',
        imageUrl: 'images/Tozeur.jpg',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Touzeur(),
            ),
          );
        },
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Row(
          children: [
            Text('TunisiaDiscoverEase'),
          ],
        ),
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: countryItems.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            margin: EdgeInsets.all(10),
            child: Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    countryItems[index].imageUrl,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 10),
                  Text(countryItems[index].name),
                  Text(countryItems[index].description),
                  TextButton(
                    onPressed: countryItems[index].onTap,
                    child: Text('View Details'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class CountryItem extends StatelessWidget {
  final String name;
  final String description;
  final String imageUrl;
  final VoidCallback onTap;

  CountryItem({
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                imageUrl,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 10),
              Text(name),
              Text(description),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final String name;

  DetailPage({required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Center(
        child: Text('Details for $name'),
      ),
    );
  }
}
