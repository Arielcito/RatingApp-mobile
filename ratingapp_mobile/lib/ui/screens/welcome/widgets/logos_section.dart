import 'package:flutter/material.dart';
import 'package:ratingapp_mobile/theme/custom_colors.dart';

class LogosSection extends StatelessWidget {
  final double separatorVertical;
  final double titleFontSize;

  const LogosSection({
    super.key,
    required this.separatorVertical,
    required this.titleFontSize,
  });

  @override
  Widget build(BuildContext context) {
    var subtitleStyle = TextStyle(
      color: CustomColors.lbluePrimary,
      fontSize: titleFontSize * 0.9,
      fontWeight: FontWeight.w600,
      fontFamily: 'Poppins',
    );
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.80,
          child: const Image(
            image:
                AssetImage('assets/images/rating_app_logo.png'),
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(height: separatorVertical),
        Text(
          'Descargá, divertite y ganá',
          style: subtitleStyle,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: separatorVertical),
      ],
    );
  }
}
