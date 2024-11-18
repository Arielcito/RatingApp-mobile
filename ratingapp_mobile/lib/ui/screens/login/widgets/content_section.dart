import 'package:flutter/material.dart';
import 'package:ratingapp_mobile/theme/custom_styles.dart';
import 'package:ratingapp_mobile/theme/custom_colors.dart';
import 'package:ratingapp_mobile/theme/custom_text_styles.dart';

class ContentSection extends StatelessWidget {
  final double paddingHorizontal;
  final double separatorVertical;
  final double titleFontSize;
  final double subtitleFontSize;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final bool isLoading;
  final String? errorMessage;
  final VoidCallback onLogin;

  const ContentSection({
    super.key,
    required this.paddingHorizontal,
    required this.separatorVertical,
    required this.titleFontSize,
    required this.subtitleFontSize,
    required this.emailController,
    required this.passwordController,
    required this.isLoading,
    required this.errorMessage,
    required this.onLogin,
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
                controller: emailController,
                decoration: CustomStyles.inputDecoration.copyWith(
                  labelText: 'Email',
                  errorText: errorMessage,
                ),
                style: bodyWhiteTextStyle,
                enabled: !isLoading,
              ),
              SizedBox(height: separatorVertical / 2),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: CustomStyles.inputDecoration.copyWith(
                  labelText: 'Contraseña',
                  fillColor: const Color(0xFF003459),
                ),
                style: bodyWhiteTextStyle,
                enabled: !isLoading,
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
                  onPressed: isLoading ? null : onLogin,
                  style: loginButtonStyle,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: isLoading
                        ? const SizedBox(
                            height: 20,
                            width: 20,
                            child: CircularProgressIndicator(
                              color: Colors.white,
                              strokeWidth: 2,
                            ),
                          )
                        : Text('Iniciar sesión', style: subtitleTextStyle),
                  ),
                ),
              ),
              if (errorMessage != null)
                Padding(
                  padding: EdgeInsets.only(top: separatorVertical / 2),
                  child: Text(
                    errorMessage!,
                    style: TextStyle(
                      color: Colors.red[300],
                      fontSize: subtitleFontSize * 0.8,
                    ),
                    textAlign: TextAlign.center,
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
