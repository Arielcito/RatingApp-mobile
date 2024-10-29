import 'package:flutter/material.dart';
import 'package:ratingapp_mobile/screens/main_screen.dart';
import 'package:ratingapp_mobile/screens/welcome_screen.dart';
import 'package:ratingapp_mobile/screens/login_screen.dart';
import 'package:ratingapp_mobile/screens/register_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rating App',
      initialRoute: "/",
      routes: {
        "/": (context) => const WelcomeScreen(),
        "/login": (context) => const LoginScreen(),
        "/register": (context) => const RegisterScreen(),
        "/home": (context) => const MainScreen(),
      },
    );
  }
}

