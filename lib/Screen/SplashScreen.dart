import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quotes_app/Screen/quotesScreen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState()
  {
    Timer(Duration(seconds: 3),()
    {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => QuoteScreen(),));
    },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Image(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/Splash.jpg',
            ),
          ),
        ),
      ),
    );
  }
}