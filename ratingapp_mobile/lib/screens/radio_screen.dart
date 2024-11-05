import 'package:flutter/material.dart';
import 'package:ratingapp_mobile/screens/custom_styles.dart';
import 'package:ratingapp_mobile/ui/widgets/banner_widget.dart';

import 'package:ratingapp_mobile/ui/widgets/main_bottom_bar_widget.dart';
import 'package:ratingapp_mobile/ui/widgets/player_controls.dart';
import 'package:ratingapp_mobile/ui/widgets/secondary_app_bar_widget.dart';

class RadioScreen extends StatelessWidget {
  const RadioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomStyles.colorDeepBlue,
      appBar: const SecondaryAppBarWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const BannerWidget(
            banner: 'assets/images/sample_banner.png',
            height: 160,
          ),
          const SizedBox(height: 20),
          const Text(
            'Radio La Plata',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: "Poppins",
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          const Text(
            'AM xx | Radio (Nombre)',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          const Text(
            'La Plata, Buenos Aires, Argentina',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          Container(
            width: MediaQuery.of(context).size.width * 0.7,
            height: MediaQuery.of(context).size.width * 0.7,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          const Spacer()
        ],
      ),
      bottomNavigationBar: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          PlayerControls(),
          MainBottomBarWidget(currentIndex: 1),
        ],
      ),
    );
  }
}
