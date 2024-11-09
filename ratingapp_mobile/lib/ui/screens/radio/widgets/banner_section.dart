import 'package:flutter/material.dart';
import 'package:ratingapp_mobile/ui/widgets/banner_widget.dart';

class BannerSection extends StatelessWidget {
  final double height;

  const BannerSection({required this.height, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BannerWidget(
      banners: ['assets/images/sample_banner.png', 'assets/images/cyber-monday.jpg']  ,
      height: height,
    );
  }
}
