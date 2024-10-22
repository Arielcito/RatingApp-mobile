import 'package:flutter/material.dart';
import 'package:ratingapp_mobile/screens/welcome_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rating App',
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 0.0,
        ),
        body: const WelcomeScreen(),
      ),
    );
  }
}
