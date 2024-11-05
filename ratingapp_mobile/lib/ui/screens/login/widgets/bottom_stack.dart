import 'package:flutter/material.dart';

class BottomStack extends StatelessWidget {
  const BottomStack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Positioned(
      bottom: 0,
      left: 0,
      child: Image(
        image: const AssetImage('assets/images/login_screen/Rectangle 3.png'),
        fit: BoxFit.fill,
        width: size.width * 0.25,
      ),
    );
  }
}
