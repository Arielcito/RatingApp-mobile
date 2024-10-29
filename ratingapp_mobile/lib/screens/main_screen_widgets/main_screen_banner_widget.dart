import 'package:flutter/material.dart';

import 'package:ratingapp_mobile/screens/custom_styles.dart';

class MainScreenBannerWidget extends StatelessWidget {
  const MainScreenBannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomStyles.colorDeepBlue,
      width: MediaQuery.of(context).size.width,
      height: 160,
      child: Image.asset('assets/images/sample_banner.png', fit: BoxFit.cover),
    );
  }
}
