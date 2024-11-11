import 'package:flutter/material.dart';
import 'package:ratingapp_mobile/ui/widgets/banner_widget.dart';

class BannerSection extends StatelessWidget {
  final double height;

  const BannerSection({required this.height, super.key});

  @override
  Widget build(BuildContext context) {
    return BannerWidget(
      banners: const ['assets/images/sample_banner.png', 'assets/images/cyber-monday.jpg']  ,
      height: height,
    );
  }
}
