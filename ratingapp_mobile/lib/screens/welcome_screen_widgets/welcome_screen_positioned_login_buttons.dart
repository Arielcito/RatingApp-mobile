import 'package:flutter/material.dart';

class WelcomeScreenPositionedLoginButtons extends StatelessWidget {
  const WelcomeScreenPositionedLoginButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
        color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20);
    return Positioned(
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
              padding: const EdgeInsets.symmetric(horizontal: 55, vertical: 15),
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
    );
  }
}
