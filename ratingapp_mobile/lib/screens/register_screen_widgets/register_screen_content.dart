import 'package:flutter/material.dart';
import 'package:ratingapp_mobile/screens/custom_styles.dart';
import 'package:ratingapp_mobile/screens/main_screen.dart';

class RegisterScreenContent extends StatefulWidget {
  const RegisterScreenContent({super.key});

  @override
  State<RegisterScreenContent> createState() => _RegisterScreenContentState();
}

class _RegisterScreenContentState extends State<RegisterScreenContent> {
  String? selectedGender;
  DateTime? selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisSize: MainAxisSize.min,
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
          // Género
          DropdownButtonFormField<String>(
            decoration: CustomStyles.inputDecoration.copyWith(
              labelText: 'Género',
            ),
            value: selectedGender,
            items: const [
              DropdownMenuItem(value: 'hombre', child: Text('Hombre')),
              DropdownMenuItem(value: 'mujer', child: Text('Mujer')),
              DropdownMenuItem(value: 'otro', child: Text('Otro')),
            ],
            onChanged: (String? value) {
              setState(() {
                selectedGender = value;
              });
            },
          ),
          const SizedBox(height: 15),
          // Fecha de nacimiento
          GestureDetector(
            onTap: () => _selectDate(context),
            child: AbsorbPointer(
              child: TextField(
                decoration: CustomStyles.inputDecoration.copyWith(
                  labelText: 'Fecha de nacimiento',
                  suffixIcon: const Icon(Icons.calendar_today),
                ),
                controller: TextEditingController(
                  text: selectedDate != null
                      ? "${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}"
                      : "",
                ),
              ),
            ),
          ),
          const SizedBox(height: 15),
          // Código de comunidad
          TextField(
            decoration: CustomStyles.inputDecoration.copyWith(
              labelText: 'Código de comunidad (opcional)',
            ),
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
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MainScreen()),
              );
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
