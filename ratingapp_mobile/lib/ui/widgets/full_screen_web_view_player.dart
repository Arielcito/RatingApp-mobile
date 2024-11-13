import 'package:flutter/material.dart';
import 'package:ratingapp_mobile/ui/widgets/banner_widget.dart';
import 'package:ratingapp_mobile/ui/widgets/player_controls.dart';
import 'package:ratingapp_mobile/ui/widgets/secondary_app_bar_widget.dart';
import 'package:ratingapp_mobile/ui/widgets/web_view_widget.dart';
import 'package:ratingapp_mobile/ui/widgets/app_bars/main_bottom_nav_bar.dart';
import 'package:ratingapp_mobile/ui/widgets/survey_widget.dart';

class FullScreenWebViewPlayer extends StatelessWidget {
  const FullScreenWebViewPlayer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: const SecondaryAppBarWidget(),
      body: SingleChildScrollView(
        child: GestureDetector(
          onTap: () {},
          child: Column(
            children: [
              const BannerWidget(
                banners:  ['assets/images/sample_banner.png', 'assets/images/cyber-monday.jpg'],
                height: 160,
              ),
              const SizedBox(height: 30),
              const Text(
                'Telefé',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Poppins',
                ),
              ),
              const SizedBox(height: 30),
              Center(
                child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: WebViewWidgetExample(),
                ),
              ),
              const SurveyWidget(
                question: '¿Volverías a votar a Milei?',
                options: ['Sí', 'No'],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          PlayerControls(),
          MainBottomNavBar(currentIndex: 0),
        ],
      ),
    );
  }
}
