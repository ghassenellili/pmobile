import 'package:flutter/material.dart';
import 'package:tourisme_app/screens/MAP.dart';

class intro extends StatefulWidget {
  const intro({super.key});

  @override
  State<intro> createState() => _introState();
}

class _introState extends State<intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.4), BlendMode.dstATop),
            image: AssetImage('images/first.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                'images/zz1.png',
                width: 900,
                height: 200,
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                "Organisez votre itinéraire, marquez vos attractions favorites et réservez votre hébergement facilement avec TunisiaDiscoverEase. La planification de votre escapade tunisienne n'a jamais été aussi simple",
                style: TextStyle(
                    color: const Color.fromARGB(255, 19, 18, 18),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MapScreen()),
                  );
                },
                child: Text('Go To Map >'),
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Colors.blue, // Change the button's background color here
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
