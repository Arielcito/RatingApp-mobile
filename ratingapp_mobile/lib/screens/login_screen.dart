import 'package:flutter/material.dart';
import 'package:ratingapp_mobile/screens/widgets/app_bar_widget.dart';
import 'package:ratingapp_mobile/screens/login_screen_widgets/login_screen_top_stack.dart';
import 'package:ratingapp_mobile/screens/login_screen_widgets/login_screen_content.dart';
import 'package:ratingapp_mobile/screens/login_screen_widgets/login_screen_bottom_stack.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const ratingAppBlack = Color(0xFF131313);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const AppBarWidget(),
      body: Container(
        color: ratingAppBlack,
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
