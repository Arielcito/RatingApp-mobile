import 'package:flutter/material.dart';

class LoginScreenTopStack extends StatelessWidget {
  const LoginScreenTopStack({super.key});

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
            image: AssetImage('assets/images/login_screen/Ellipse 1.png'),
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: Image(
            image: AssetImage('assets/images/login_screen/Ellipse 2.png'),
          ),
        ),
      ],
    );
  }
}
