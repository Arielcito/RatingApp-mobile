import 'package:flutter/material.dart';

import 'package:ratingapp_mobile/theme/custom_styles.dart';

class BannerWidget extends StatelessWidget {
  final String banner;
  final double height;

  const BannerWidget({
    required this.banner,
    required this.height,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomStyles.colorDeepBlue,
      width: MediaQuery.of(context).size.width,
      height: height,
      child: Image.asset(banner, fit: BoxFit.cover),
    );
  }
}

