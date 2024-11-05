import 'package:flutter/material.dart';

class WelcomeBottomStack extends StatelessWidget {
  const WelcomeBottomStack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Positioned(
      bottom: 0,
      left: 0,
      child: Image.asset(
        'assets/images/welcome_screen/bottom_stack.png',
        fit: BoxFit.fill,
        width: size.width * 0.35,
      ),
    );
  }
}
