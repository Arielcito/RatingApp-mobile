import 'package:flutter/material.dart';
import 'package:ratingapp_mobile/theme/custom_styles.dart';
import 'package:ratingapp_mobile/ui/screens/register/widgets/register_screen_bottom.dart';
import 'package:ratingapp_mobile/ui/screens/register/widgets/register_screen_content.dart';
import 'package:ratingapp_mobile/ui/screens/register/widgets/register_screen_top_stack.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: CustomStyles.colorBlack,
        child: const SizedBox.expand(
          child: Stack(
        children: [
              RegisterScreenTopStack(),
              RegisterScreenBottomStack(),
              SafeArea(
                child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(top: 80, bottom: 100),
                child: RegisterScreenContent(),
              ),
            ),
          ),
        ],
          ),
        ),
      ),
    );
  }
}
