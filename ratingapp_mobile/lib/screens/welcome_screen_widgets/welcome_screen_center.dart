import 'package:flutter/material.dart';

class WelcomeScreenCenter extends StatelessWidget {
  const WelcomeScreenCenter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 80),
        Image(
            image: AssetImage('assets/images/welcome_screen/Recurso 4 2.png')),
        SizedBox(height: 30),
        Text(
          'Descargá, divertite y ganá',
          style: TextStyle(
            color: Color(0xFF00A5E0),
            fontSize: 24,
            fontWeight: FontWeight.w600,
            fontFamily: 'Poppins',
          ),
        ),
      ],
    ));
  }
}
