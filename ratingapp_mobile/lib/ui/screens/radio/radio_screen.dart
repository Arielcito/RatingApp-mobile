import 'package:flutter/material.dart';
import 'package:ratingapp_mobile/theme/custom_styles.dart';
import 'package:ratingapp_mobile/ui/screens/radio/widgets/banner_section.dart';
import 'package:ratingapp_mobile/ui/screens/radio/widgets/player_container.dart';
import 'package:ratingapp_mobile/ui/screens/radio/widgets/radio_info_section.dart';
import 'package:ratingapp_mobile/ui/widgets/app_bars/main_bottom_nav_bar.dart';
import 'package:ratingapp_mobile/ui/widgets/player_controls.dart';
import 'package:ratingapp_mobile/ui/widgets/secondary_app_bar_widget.dart';

class RadioScreen extends StatelessWidget {
  const RadioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: CustomStyles.colorDeepBlue,
      appBar: const SecondaryAppBarWidget(),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Banner widget (En duda de si mostrarlo o no)
                    BannerSection(height: 160),
                    SizedBox(height: size.height * 0.03),
                    // Información de la radio
                    RadioInfoSection(
                      titleFontSize: size.width * 0.05,
                      subtitleFontSize: size.width * 0.04,
                    ),
                    SizedBox(height: size.height * 0.03),
                    // Contenedor de controles de la radio
                    PlayerContainer(size: size.width * 0.7),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          PlayerControls(),
          MainBottomNavBar(currentIndex: 1),
        ],
      ),
    );
  }
}
