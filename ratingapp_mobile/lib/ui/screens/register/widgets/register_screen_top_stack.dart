import 'package:flutter/material.dart';

class RegisterScreenTopStack extends StatelessWidget {
  const RegisterScreenTopStack({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      alignment: Alignment.topCenter,
      clipBehavior: Clip.none,
      children: [
        Positioned(
          top: 0,
          right: 0,
          child: Image(
            image: AssetImage('assets/images/register_screen/Ellipse 1.png'),
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: Image(
            image: AssetImage('assets/images/register_screen/Ellipse 2.png'),
          ),
        ),
      ],
    );
  }
}
