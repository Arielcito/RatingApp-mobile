import 'package:flutter/material.dart';
import 'package:ratingapp_mobile/theme/custom_styles.dart';
import 'package:ratingapp_mobile/theme/custom_colors.dart';
import 'package:ratingapp_mobile/theme/custom_text_styles.dart';

class ForgotPasswordContentSection extends StatelessWidget {
  final double paddingHorizontal;
  final double separatorVertical;
  final double titleFontSize;
  final double subtitleFontSize;

  const ForgotPasswordContentSection({
    super.key,
    required this.paddingHorizontal,
    required this.separatorVertical,
    required this.titleFontSize,
    required this.subtitleFontSize,
  });

  @override
  Widget build(BuildContext context) {
    var titleTextStyle = CustomTextStyles.title(fontSize: titleFontSize);
    var subtitleTextStyle =
        CustomTextStyles.subtitle(fontSize: subtitleFontSize);
    var bodyTextStyle = CustomTextStyles.body(
      fontSize: subtitleFontSize * 0.9,
      color: Colors.white,
      fontWeight: FontWeight.w500,
    );

    var buttonStyle = ElevatedButton.styleFrom(
      backgroundColor: CustomColors.lbluePrimary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      minimumSize: const Size(double.infinity, 50),
    );

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: paddingHorizontal),
      child: Column(
        children: [
          const Spacer(),
          Text('Recuperar contraseña', style: titleTextStyle),
          SizedBox(height: separatorVertical),
          Text(
            'Ingresa tu correo electrónico y te enviaremos las instrucciones para recuperar tu contraseña.',
            style: bodyTextStyle,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: separatorVertical),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: const Image(
              image: AssetImage('assets/images/rating_app_logo.png'),
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(height: separatorVertical),
          TextField(
            decoration:
                CustomStyles.inputDecoration.copyWith(labelText: 'Email'),
            style: bodyTextStyle,
          ),
          SizedBox(height: separatorVertical),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: buttonStyle,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Text('Enviar instrucciones', style: subtitleTextStyle),
            ),
          ),
          SizedBox(height: separatorVertical / 2),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Volver al inicio de sesión',
              style: bodyTextStyle.copyWith(color: CustomColors.lbluePrimary),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
