import 'package:flutter/material.dart';

class ForgotPasswordScreenTopStack extends StatelessWidget {
  const ForgotPasswordScreenTopStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          right: -100,
          top: -50,
          child: Image.asset(
            'assets/images/login_screen/Ellipse 1.png',
            width: 200,
            height: 200,
          ),
        ),
        Positioned(
          left: -60,
          top: 100,
          child: Image.asset(
            'assets/images/login_screen/Ellipse 2.png',
            width: 150,
            height: 150,
          ),
        ),
      ],
    );
  }
} 