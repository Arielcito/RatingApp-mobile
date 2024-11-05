import 'package:flutter/material.dart';
import 'package:ratingapp_mobile/theme/custom_styles.dart';
import 'package:ratingapp_mobile/ui/widgets/banner_widget.dart';
import 'package:ratingapp_mobile/ui/screens/main/widgets/main_screen_video_widget.dart';
import 'package:ratingapp_mobile/ui/screens/main/widgets/radio_icons_grid.dart';

import 'package:ratingapp_mobile/ui/widgets/app_bars/main_app_bar.dart';
import 'package:ratingapp_mobile/ui/widgets/main_bottom_bar_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(),
      body: SingleChildScrollView(
        child: Container(
          color: CustomStyles.colorDeepBlue,
          child: const Column(
            children: [
              BannerWidget(
                banner: 'assets/images/sample_banner.png',
                height: 160,
              ),
              SizedBox(height: 10),
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
