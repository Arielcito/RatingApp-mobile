import 'package:flutter/material.dart';
import 'package:ratingapp_mobile/screens/welcome_screen_widgets/welcome_screen_top_stack.dart';
import 'package:ratingapp_mobile/screens/welcome_screen_widgets/welcome_screen_center.dart';
import 'package:ratingapp_mobile/screens/welcome_screen_widgets/welcome_screen_bottom_stack.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const ratingAppBlack = Color(0xFF131313);

    const textStyle = TextStyle(
        color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20);
    return Container(
      color: ratingAppBlack,
      child: SizedBox.expand(
        child: Stack(
          children: [
            const WelcomeScreenTopStack(),
            const WelcomeScreenCenter(),
            Positioned(
              bottom: 60,
              left: 0,
              right: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF00A5E0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 55, vertical: 15),
                    ),
                    child: const Text('Iniciar sesión', style: textStyle),
                  ),
                  const SizedBox(height: 20),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Registrarse', style: textStyle),
                  ),
                ],
              ),
            ),
            const WelcomeScreenBottomStack(),
          ],
        ),
      ),
    );
  }
}
