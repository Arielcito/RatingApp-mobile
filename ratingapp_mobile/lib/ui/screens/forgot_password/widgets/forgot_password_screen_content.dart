import 'package:flutter/material.dart';
import 'package:ratingapp_mobile/theme/custom_styles.dart';

class ForgotPasswordScreenContent extends StatelessWidget {
  const ForgotPasswordScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    const textStyle20 = TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w500,
        fontFamily: 'Poppins');

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(height: 70),
        const Text(
          'Recuperar contraseña',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins',
          ),
        ),
        const SizedBox(height: 25),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            'Ingresa tu correo electrónico y te enviaremos las instrucciones para recuperar tu contraseña.',
            style: textStyle20,
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 35),
        const Image(
            image: AssetImage('assets/images/login_screen/Recurso 4 3.png')),
        const SizedBox(height: 55),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: TextField(
            decoration: CustomStyles.inputDecoration.copyWith(labelText: 'Email'),
          ),
        ),
        const SizedBox(height: 35),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: ElevatedButton(
            onPressed: () {
              // Aquí iría la lógica para enviar el correo
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF00A5E0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              minimumSize: const Size(double.infinity, 50),
            ),
            child: const Padding(
              padding: EdgeInsets.only(top: 15, bottom: 15),
              child: Text(
                'Enviar instrucciones',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text(
            'Volver al inicio de sesión',
            style: TextStyle(
              color: Color(0xFF00A5E0),
              fontSize: 14,
              fontWeight: FontWeight.w600,
              fontFamily: 'Poppins',
            ),
          ),
        ),
      ],
    );
  }
} 