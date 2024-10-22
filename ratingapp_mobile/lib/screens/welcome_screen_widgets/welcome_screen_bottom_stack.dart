import 'package:flutter/material.dart';

class WelcomeScreenBottomStack extends StatelessWidget {
  const WelcomeScreenBottomStack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Stack(alignment: Alignment.bottomLeft, children: [
      Positioned(
        bottom: 0,
        left: 0,
        child: Image(
          image: AssetImage('assets/images/welcome_screen/Rectangle 3.png'),
        ),
      ),
      Positioned(
        bottom: 0,
        left: 0,
        child: Image(
          image: AssetImage('assets/images/welcome_screen/Rectangle 4.png'),
        ),
      )
    ]);
  }
}
