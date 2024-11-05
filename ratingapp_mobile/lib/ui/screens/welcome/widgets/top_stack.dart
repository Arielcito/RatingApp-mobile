import 'package:flutter/material.dart';

class TopStack extends StatelessWidget {
  const TopStack({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double leftMargin = size.width * 0.10; // 10% del ancho de la pantalla

    return Padding(
      padding: EdgeInsets.only(left: leftMargin),
      child: SizedBox(
        width: double.infinity,
        child: Row(
          children: [
            Expanded(
              child: Image.asset(
                'assets/images/welcome_screen/top_stack.png',
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
