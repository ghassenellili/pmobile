import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tourisme_app/screens/intro.dart'; // Import the file containing the intro class

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key); // Correct the constructor

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => intro())); // Use context from initState
    }); // Add a closing parenthesis here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 26, 184, 212),
      body: Center(
        child: Image.asset(
          'images/zz1.png',
          width: 900,
          height: 200,
        ),
      ),
    );
  }
}
