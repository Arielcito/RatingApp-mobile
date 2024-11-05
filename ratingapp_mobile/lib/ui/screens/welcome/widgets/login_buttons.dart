import 'package:flutter/material.dart';
import 'package:ratingapp_mobile/theme/custom_colors.dart';

class LoginButtons extends StatelessWidget {
  final double paddingHorizontal;
  final double separatorVertical;
  final double buttonFontSize;

  const LoginButtons({
    super.key,
    required this.paddingHorizontal,
    required this.separatorVertical,
    required this.buttonFontSize,
  });

  @override
  Widget build(BuildContext context) {
    var buttonTextStyle = TextStyle(
      color: Colors.white,
      fontSize: buttonFontSize,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
    );
    var buttonStyle = ElevatedButton.styleFrom(
      backgroundColor: CustomColors.lbluePrimary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 55, vertical: 15),
    );
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: paddingHorizontal),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
            style: buttonStyle,
            child: Text(
              'Iniciar sesión',
              style: buttonTextStyle,
            ),
          ),
          SizedBox(height: separatorVertical / 2),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/register');
            },
            child: Text('Registrarse', style: buttonTextStyle),
          ),
        ],
      ),
    );
  }
}
