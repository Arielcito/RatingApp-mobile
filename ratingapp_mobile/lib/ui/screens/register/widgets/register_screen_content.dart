import 'package:flutter/material.dart';
import 'package:ratingapp_mobile/theme/custom_styles.dart';
import 'package:ratingapp_mobile/ui/screens/main/main_screen.dart';

class RegisterScreenContent extends StatefulWidget {
  const RegisterScreenContent({super.key});

  @override
  State<RegisterScreenContent> createState() => _RegisterScreenContentState();
}

class _RegisterScreenContentState extends State<RegisterScreenContent> {
  // Controladores para los campos de texto
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _dniController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _communityCodeController = TextEditingController();
  bool _acceptTerms = false;
  
  String? selectedGender;
  DateTime? selectedDate;

  // Agregar dispose para liberar recursos
  @override
  void dispose() {
    _usernameController.dispose();
    _dniController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _communityCodeController.dispose();
    super.dispose();
  }

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
    // Definir el estilo del input con texto blanco
    const inputStyle = TextStyle(
      color: Colors.white,
      fontFamily: 'Poppins',
    );

    // Definir el estilo para el texto del dropdown
    const dropdownStyle = TextStyle(
      color: Colors.white,
      fontFamily: 'Poppins',
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Form(
        key: _formKey,
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
            TextFormField(
              controller: _usernameController,
              style: inputStyle,
              decoration: CustomStyles.inputDecoration.copyWith(
                labelText: 'Nombre de usuario',
                labelStyle: inputStyle,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor ingrese un nombre de usuario';
                }
                if (value.length < 3) {
                  return 'El nombre debe tener al menos 3 caracteres';
                }
                return null;
              },
            ),
            const SizedBox(height: 15),
            TextFormField(
              controller: _dniController,
              style: inputStyle,
              decoration: CustomStyles.inputDecoration.copyWith(
                labelText: 'DNI',
                labelStyle: inputStyle,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor ingrese su DNI';
                }
                if (!RegExp(r'^\d{8}[A-Z]$').hasMatch(value)) {
                  return 'DNI inválido (formato: 12345678A)';
                }
                return null;
              },
            ),
            const SizedBox(height: 15),
            TextFormField(
              controller: _phoneController,
              style: inputStyle,
              decoration: CustomStyles.inputDecoration.copyWith(
                labelText: 'Teléfono',
                labelStyle: inputStyle,
              ),
              keyboardType: TextInputType.phone,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor ingrese su teléfono';
                }
                if (!RegExp(r'^\d{9}$').hasMatch(value)) {
                  return 'Teléfono inválido';
                }
                return null;
              },
            ),
            const SizedBox(height: 15),
            TextFormField(
              controller: _emailController,
              style: inputStyle,
              decoration: CustomStyles.inputDecoration.copyWith(
                labelText: 'Email',
                labelStyle: inputStyle,
              ),
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor ingrese su email';
                }
                if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
                  return 'Email inválido';
                }
                return null;
              },
            ),
            const SizedBox(height: 15),
            TextFormField(
              controller: _passwordController,
              style: inputStyle,
              decoration: CustomStyles.inputDecoration.copyWith(
                labelText: 'Contraseña',
                labelStyle: inputStyle,
              ),
              obscureText: true,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor ingrese una contraseña';
                }
                if (value.length < 6) {
                  return 'La contraseña debe tener al menos 6 caracteres';
                }
                return null;
              },
            ),
            const SizedBox(height: 15),
            TextFormField(
              controller: _confirmPasswordController,
              style: inputStyle,
              decoration: CustomStyles.inputDecoration.copyWith(
                labelText: 'Confirmar contraseña',
                labelStyle: inputStyle,
              ),
              obscureText: true,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor confirme su contraseña';
                }
                if (value != _passwordController.text) {
                  return 'Las contraseñas no coinciden';
                }
                return null;
              },
            ),
            const SizedBox(height: 15),
            // Género
            DropdownButtonFormField<String>(
              style: dropdownStyle,
              dropdownColor: CustomStyles.colorDeepBlue, // Color de fondo del menú desplegable
              decoration: CustomStyles.inputDecoration.copyWith(
                labelText: 'Género',
                labelStyle: inputStyle,
              ),
              value: selectedGender,
              items: [
                DropdownMenuItem(value: 'hombre', child: Text('Hombre', style: dropdownStyle)),
                DropdownMenuItem(value: 'mujer', child: Text('Mujer', style: dropdownStyle)),
                DropdownMenuItem(value: 'otro', child: Text('Otro', style: dropdownStyle)),
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
                  style: inputStyle,
                  decoration: CustomStyles.inputDecoration.copyWith(
                    labelText: 'Fecha de nacimiento',
                    labelStyle: inputStyle,
                    suffixIcon: const Icon(Icons.calendar_today, color: Colors.white),
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
              controller: _communityCodeController,
              style: inputStyle,
              decoration: CustomStyles.inputDecoration.copyWith(
                labelText: 'Código de comunidad (opcional)',
                labelStyle: inputStyle,
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  value: _acceptTerms,
                  onChanged: (bool? newValue) {
                    setState(() {
                      _acceptTerms = newValue ?? false;
                    });
                  },
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
                if (_formKey.currentState!.validate() && _acceptTerms) {
                  if (selectedDate == null) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Por favor seleccione su fecha de nacimiento')),
                    );
                    return;
                  }
                  if (selectedGender == null) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Por favor seleccione su género')),
                    );
                    return;
                  }
                  // Si todo es válido, proceder con el registro
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MainScreen()),
                  );
                } else if (!_acceptTerms) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Debe aceptar los términos y condiciones')),
                  );
                }
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
      ),
    );
  }
}
