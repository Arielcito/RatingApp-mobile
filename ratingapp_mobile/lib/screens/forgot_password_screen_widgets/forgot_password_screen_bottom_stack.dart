import 'package:flutter/material.dart';

class ForgotPasswordScreenBottomStack extends StatelessWidget {
  const ForgotPasswordScreenBottomStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: -50,
      right: -100,
      child: Image.asset(
        'assets/images/login_screen/Rectangle 3.png',
        width: 200,
        height: 200,
      ),
    );
  }
} 