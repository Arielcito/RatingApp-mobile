import 'package:flutter/material.dart';

class LoginScreenContent extends StatelessWidget {
  const LoginScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    const azulClaro = Color(0xFF003459);
    const azulOscuro = Color(0xFF003366);
    const textStyle14 = TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        fontFamily: 'Poppins');

    const textStyle16 = TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        fontFamily: 'Poppins');

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
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(20),
              filled: true,
              fillColor: azulOscuro.withOpacity(0.2),
              labelText: 'Email',
              labelStyle: textStyle16,
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(color: azulClaro, width: 2.0),
              ),
              focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(color: azulClaro, width: 2.0),
              ),
              enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(color: azulClaro, width: 2.0),
              ),
              errorBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(color: azulClaro, width: 2.0),
              ),
              focusedErrorBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(color: azulClaro, width: 2.0),
              ),
            ),
          ),
        ),
        const SizedBox(height: 25),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(20),
              filled: true,
              fillColor: azulClaro,
              labelText: 'Contraseña',
              labelStyle: textStyle16,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(color: azulClaro, width: 2.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(color: azulClaro, width: 2.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(color: azulClaro, width: 2.0),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(color: azulClaro, width: 2.0),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(color: azulClaro, width: 2.0),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
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
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: ElevatedButton(
            onPressed: () {},
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
              children: const [
                Image(
                    image: AssetImage(
                        'assets/images/login_screen/logos_facebook.png')),
                SizedBox(width: 25),
                Image(
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
