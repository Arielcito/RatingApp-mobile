import 'package:flutter/material.dart';
import 'package:ratingapp_mobile/screens/custom_styles.dart';

class RegisterScreenContent extends StatelessWidget {
  const RegisterScreenContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Registrarse',
            style: CustomStyles.textStyle30fwbold,
          ),
          const SizedBox(height: 20),
          Text(
            'Bienvenido!',
            style: CustomStyles.textStyle20fw500,
          ),
          const SizedBox(height: 50),
          TextField(
            decoration: CustomStyles.inputDecoration
                .copyWith(labelText: 'Nombre de usuario'),
          ),
          const SizedBox(height: 15),
          TextField(
            decoration: CustomStyles.inputDecoration.copyWith(labelText: 'DNI'),
          ),
          const SizedBox(height: 15),
          TextField(
            decoration:
                CustomStyles.inputDecoration.copyWith(labelText: 'Teléfono'),
          ),
          const SizedBox(height: 15),
          TextField(
            decoration:
                CustomStyles.inputDecoration.copyWith(labelText: 'Email'),
          ),
          const SizedBox(height: 15),
          TextField(
            obscureText: true,
            decoration:
                CustomStyles.inputDecoration.copyWith(labelText: 'Contraseña'),
          ),
          const SizedBox(height: 15),
          TextField(
            obscureText: true,
            decoration: CustomStyles.inputDecoration
                .copyWith(labelText: 'Confirmar contraseña'),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                value: false,
                onChanged: (bool? newValue) {},
              ),
              Text(
                'Acepto términos y condiciones',
                style: CustomStyles.textStyle16fw400,
                textAlign: TextAlign.center,
              ),
            ],
          ),
          const SizedBox(height: 15),
          ElevatedButton(
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
                'Registrarse',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
