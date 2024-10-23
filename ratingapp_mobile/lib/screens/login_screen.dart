import 'package:flutter/material.dart';
import 'package:ratingapp_mobile/screens/widgets/app_bar_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const ratingAppBlack = Color(0xFF131313);

    return Scaffold(
      appBar: const AppBarWidget(),
      body: Container(
        color: ratingAppBlack,
        child: const SizedBox.expand(
          child: Stack(
            children: [],
          ),
        ),
      ),
    );
  }
}

