import 'package:flutter/material.dart';

import 'welcome_screen_widgets/welcome_screen_top_stack.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const ratingAppBlack = Color(0xFF131313);

    return Container(
      color: ratingAppBlack,
      child: const SizedBox.expand(
        child: Stack(
          children: [WelcomeScreenTopStack()],
        ),
      ),
    );
  }
}
