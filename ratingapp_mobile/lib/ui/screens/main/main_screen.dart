import 'package:flutter/material.dart';
import 'package:ratingapp_mobile/theme/custom_styles.dart';
import 'package:ratingapp_mobile/ui/widgets/banner_widget.dart';
import 'package:ratingapp_mobile/ui/screens/main/widgets/main_screen_video_widget.dart';
import 'package:ratingapp_mobile/ui/screens/main/widgets/radio_icons_grid.dart';

import 'package:ratingapp_mobile/ui/widgets/app_bars/main_app_bar.dart';
import 'package:ratingapp_mobile/ui/widgets/app_bars/main_bottom_nav_bar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(),
      body: SingleChildScrollView(
        child: Container(
          color: CustomStyles.colorDeepBlue,
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: const BannerWidget(
                  banners: [
                    'assets/images/sample_banner.png',
                    'assets/images/cyber-monday.jpg'
                  ],
                  height: 160,
                ),
              ),
              const SizedBox(height: 10),
              const MainScreenVideoWidget(),
              const SizedBox(height: 10),
              const RadioIconsGrid(),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const MainBottomNavBar(currentIndex: 2),
    );
  }
}
