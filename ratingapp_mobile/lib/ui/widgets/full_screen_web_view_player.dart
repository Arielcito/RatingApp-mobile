import 'package:flutter/material.dart';
import 'package:ratingapp_mobile/ui/widgets/banner_widget.dart';
import 'package:ratingapp_mobile/ui/widgets/player_controls.dart';
import 'package:ratingapp_mobile/ui/widgets/secondary_app_bar_widget.dart';
import 'package:ratingapp_mobile/ui/widgets/web_view_widget.dart';
import 'package:ratingapp_mobile/ui/widgets/app_bars/main_bottom_nav_bar.dart';

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
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFD9D9D9),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Volverías a votar a Milei?',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.grey,
                              ),
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'si',
                                    groupValue: null,
                                    onChanged: (value) {},
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    activeColor: Colors.blue,
                                  ),
                                  const Text(
                                    'Sí',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey,
                              ),
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'mega_si',
                                    groupValue: null,
                                    onChanged: (value) {},
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    activeColor: Colors.blue,
                                  ),
                                  const Text(
                                    'No',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
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
