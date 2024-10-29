import 'package:flutter/material.dart';

import 'package:ratingapp_mobile/screens/widgets/main_app_bar_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const ratingAppBlack = Color(0xFF131313);

    return Scaffold(
      appBar: const MainAppBarWidget(),
      body: Container(
        color: ratingAppBlack,
      ),
    );
  }
}
