import 'package:flutter/material.dart';

class RegisterScreenBottomStack extends StatelessWidget {
  const RegisterScreenBottomStack({super.key});

  @override
  Widget build(BuildContext context) {
    return const Positioned(
      bottom: 0,
      left: 0,
      child: Image(
        image: AssetImage('assets/images/login_screen/Rectangle 3.png'),
        fit: BoxFit.fill,
        height: 250,
      ),
    );
  }
}
