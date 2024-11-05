import 'package:flutter/material.dart';
import 'package:ratingapp_mobile/screens/custom_styles.dart';
import 'package:ratingapp_mobile/ui/widgets/app_bar_widget.dart';
import 'package:ratingapp_mobile/ui/screens/login/widgets/login_screen_top_stack.dart';
import 'package:ratingapp_mobile/ui/screens/login/widgets/login_screen_content.dart';
import 'package:ratingapp_mobile/ui/screens/login/widgets/login_screen_bottom_stack.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
              LoginScreenTopStack(),
              LoginScreenContent(),
              LoginScreenBottomStack(),
            ],
          ),
        ),
      ),
    );
  }
}
