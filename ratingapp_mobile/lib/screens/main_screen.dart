import 'package:flutter/material.dart';
import 'package:ratingapp_mobile/screens/custom_styles.dart';
import 'package:ratingapp_mobile/screens/main_screen_widgets/main_screen_banner_widget.dart';

import 'package:ratingapp_mobile/screens/widgets/main_app_bar_widget.dart';
import 'package:ratingapp_mobile/screens/widgets/main_bottom_bar_widget.dart';
import 'package:ratingapp_mobile/screens/widgets/video_player_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBarWidget(),
      body: SingleChildScrollView(
        child: Container(
          color: CustomStyles.colorDeepBlue,
          child: Column(
            children: [
              const MainScreenBannerWidget(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: VideoPlayerWidget(),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const MainBottomBarWidget(currentIndex: 2),
    );
  }
}
