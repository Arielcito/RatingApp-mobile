import 'package:flutter/material.dart';
import 'package:ratingapp_mobile/screens/custom_styles.dart';

class LoginScreenContent extends StatelessWidget {
  const LoginScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    const textStyle14 = TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.w600,
        fontFamily: 'Poppins',
        shadows: [
          Shadow(
            color: Colors.black87,
            offset: Offset(1.0, 1.0),
            blurRadius: 2.0,
          ),
        ]);

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
          'Inicio de sesión',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins',
          ),
        ),
        const SizedBox(height: 25),
        const Text(
          'Bienvenido!',
          style: textStyle20,
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
        const SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: TextField(
            obscureText: true,
            decoration: CustomStyles.inputDecoration.copyWith(
                labelText: 'Contraseña', fillColor: const Color(0xFF003459)),
          ),
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Olvidaste tu contraseña?',
                  style: TextStyle(
                    color: Color(0xFF00A5E0),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/main');
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
                'Iniciar sesión',
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
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Todavía no tenés cuenta?',
                  style: textStyle14,
                  textAlign: TextAlign.center,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Regístrate.',
                    style: TextStyle(
                      color: Color(0xFF00A5E0),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Text('o inicia sesión con',
                style: textStyle14, textAlign: TextAlign.center),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(
                    image: AssetImage(
                        'assets/images/login_screen/logos_facebook.png')),
                const SizedBox(width: 25),
                const Image(
                    image: AssetImage(
                        'assets/images/login_screen/devicon_google.png')),
              ],
            )
          ],
        ),
      ],
    );
  }
}
