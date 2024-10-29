import 'package:flutter/material.dart';
import 'package:ratingapp_mobile/screens/custom_styles.dart';
import 'package:ratingapp_mobile/screens/welcome_screen_widgets/welcome_screen_top_stack.dart';
import 'package:ratingapp_mobile/screens/welcome_screen_widgets/welcome_screen_center.dart';
import 'package:ratingapp_mobile/screens/welcome_screen_widgets/welcome_screen_bottom_stack.dart';
import 'package:ratingapp_mobile/screens/widgets/app_bar_widget.dart';
import 'package:ratingapp_mobile/screens/welcome_screen_widgets/welcome_screen_positioned_login_buttons.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(),
      body: Container(
        color: CustomStyles.colorBlack,
        child: const SizedBox.expand(
          child: Stack(
            children: [
              WelcomeScreenTopStack(),
              WelcomeScreenCenter(),
              WelcomeScreenPositionedLoginButtons(),
              WelcomeScreenBottomStack(),
            ],
          ),
        ),
      ),
    );
  }
}
