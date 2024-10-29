import 'package:flutter/material.dart';
import 'package:ratingapp_mobile/screens/custom_styles.dart';
import 'package:ratingapp_mobile/screens/register_screen_widgets/register_screen_content.dart';
import 'package:ratingapp_mobile/screens/register_screen_widgets/register_screen_top_stack.dart';
import 'package:ratingapp_mobile/screens/register_screen_widgets/register_screen_bottom.dart';
import 'package:ratingapp_mobile/screens/widgets/app_bar_widget.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
              RegisterScreenTopStack(),
              RegisterScreenContent(),
              RegisterScreenBottomStack(),
            ],
          ),
        ),
      ),
    );
  }
}
