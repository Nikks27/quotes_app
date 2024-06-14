import 'package:flutter/material.dart';
import 'package:quotes_app/Screen/SplashScreen.dart';
import 'package:quotes_app/Screen/ThemeScreen.dart';
import 'package:quotes_app/Screen/profile.dart';
import 'package:quotes_app/Screen/quotesScreen.dart';
import 'package:quotes_app/Screen/topic.dart';



class QuoteApp extends StatelessWidget {
  const QuoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: '/to',
      routes: {
        '/' : (context) => SplashScreen(),
        '/quote' : (context) => QuoteScreen(),
        '/theme' : (context) => ThemeScreen(),
        '/to' : (context) => TopicScreen(),
        '/pro' : (context) => Profile(),
      },
    );
  }
}