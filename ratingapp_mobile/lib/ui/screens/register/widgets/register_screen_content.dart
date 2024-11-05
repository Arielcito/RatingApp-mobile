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
              decoration: CustomStyles.inputDecoration
                  .copyWith(labelText: 'Nombre de usuario'),
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
              decoration: CustomStyles.inputDecoration.copyWith(labelText: 'DNI'),
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
              decoration: CustomStyles.inputDecoration.copyWith(labelText: 'Teléfono'),
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
              decoration: CustomStyles.inputDecoration.copyWith(labelText: 'Email'),
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
              obscureText: true,
              decoration: CustomStyles.inputDecoration.copyWith(labelText: 'Contraseña'),
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
              obscureText: true,
              decoration: CustomStyles.inputDecoration
                  .copyWith(labelText: 'Confirmar contraseña'),
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
