import 'package:flutter/material.dart';
import 'package:ratingapp_mobile/screens/custom_styles.dart';
import 'package:ratingapp_mobile/screens/widgets/banner_widget.dart';
import 'package:ratingapp_mobile/screens/main_screen_widgets/main_screen_video_widget.dart';
import 'package:ratingapp_mobile/screens/main_screen_widgets/radio_icons_grid.dart';

import 'package:ratingapp_mobile/screens/widgets/main_app_bar_widget.dart';
import 'package:ratingapp_mobile/screens/widgets/main_bottom_bar_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBarWidget(),
      body: SingleChildScrollView(
        child: Container(
          color: CustomStyles.colorDeepBlue,
          child: const Column(
            children: [
              BannerWidget(
                banner: 'assets/images/sample_banner.png',
                height: 160,
              ),
              MainScreenVideoWidget(),
              SizedBox(height: 10),
              RadioIconsGrid(),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const MainBottomBarWidget(currentIndex: 2),
    );
  }
}
