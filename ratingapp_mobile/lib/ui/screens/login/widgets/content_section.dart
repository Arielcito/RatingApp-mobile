import 'package:flutter/material.dart';
import 'package:ratingapp_mobile/theme/custom_styles.dart';
import 'package:ratingapp_mobile/theme/custom_colors.dart';
import 'package:ratingapp_mobile/theme/custom_text_styles.dart';

class ContentSection extends StatelessWidget {
  final double paddingHorizontal;
  final double separatorVertical;
  final double titleFontSize;
  final double subtitleFontSize;

  const ContentSection({
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
    var bodyBlueTextStyle = CustomTextStyles.body(
      fontSize: subtitleFontSize * 0.9,
      fontWeight: FontWeight.w600,
      color: CustomColors.lbluePrimary,
    );
    var bodyWhiteTextStyle = CustomTextStyles.body(
      fontSize: subtitleFontSize * 0.9,
      fontWeight: FontWeight.w600,
    );

    var loginButtonStyle = ElevatedButton.styleFrom(
      backgroundColor: CustomColors.lbluePrimary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    );

    return Column(
      children: [
        const Spacer(),
        Text('Inicio de sesión', style: titleTextStyle),
        SizedBox(height: separatorVertical),
        Text('Bienvenido!', style: subtitleTextStyle),
        SizedBox(height: separatorVertical),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.80,
          child: const Image(
            image: AssetImage('assets/images/rating_app_logo.png'),
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(height: separatorVertical),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: paddingHorizontal),
          child: Column(
            children: [
              TextField(
                decoration:
                    CustomStyles.inputDecoration.copyWith(labelText: 'Email'),
                style: bodyWhiteTextStyle,
              ),
              SizedBox(height: separatorVertical / 2),
              TextField(
                obscureText: true,
                decoration: CustomStyles.inputDecoration.copyWith(
                    labelText: 'Contraseña',
                    fillColor: const Color(0xFF003459)),
                style: bodyWhiteTextStyle,
              ),
              SizedBox(height: separatorVertical / 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/forgot-password');
                    },
                    child: Text(
                      'Olvidaste tu contraseña?',
                      style: bodyBlueTextStyle,
                    ),
                  ),
                ],
              ),
              SizedBox(height: separatorVertical / 2),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  style: loginButtonStyle,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15, bottom: 15),
                    child: Text('Iniciar sesión', style: subtitleTextStyle),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: separatorVertical),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Todavía no tenés cuenta?',
                  style: bodyWhiteTextStyle,
                  textAlign: TextAlign.center,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/register');
                  },
                  child: Text('Regístrate.', style: bodyBlueTextStyle),
                ),
              ],
            ),
            SizedBox(height: separatorVertical / 4),
            Text('o inicia sesión con',
                style: bodyWhiteTextStyle, textAlign: TextAlign.center),
            SizedBox(height: separatorVertical),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage(
                      'assets/images/login_screen/logos_facebook.png'),
                ),
                SizedBox(width: 20),
                Image(
                  image: AssetImage(
                      'assets/images/login_screen/devicon_google.png'),
                ),
              ],
            )
          ],
        ),
        const Spacer(),
      ],
    );
  }
}
