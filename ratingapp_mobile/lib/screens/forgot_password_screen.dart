import 'package:flutter/material.dart';
import 'package:ratingapp_mobile/screens/custom_styles.dart';
import 'package:ratingapp_mobile/screens/widgets/app_bar_widget.dart';
import 'package:ratingapp_mobile/screens/forgot_password_screen_widgets/forgot_password_screen_top_stack.dart';
import 'package:ratingapp_mobile/screens/forgot_password_screen_widgets/forgot_password_screen_content.dart';
import 'package:ratingapp_mobile/screens/forgot_password_screen_widgets/forgot_password_screen_bottom_stack.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const AppBarWidget(),
      body: Container(
        color: CustomStyles.colorBlack,
        child: const SizedBox.expand(
          child: Stack(
            children: [
              ForgotPasswordScreenTopStack(),
              ForgotPasswordScreenContent(),
              ForgotPasswordScreenBottomStack(),
            ],
          ),
        ),
      ),
    );
  }
} 