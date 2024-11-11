import 'package:flutter/material.dart';
import 'package:ratingapp_mobile/theme/custom_text_styles.dart';

class RadioInfoSection extends StatelessWidget {
  final double titleFontSize;
  final double subtitleFontSize;

  const RadioInfoSection({
    required this.titleFontSize,
    required this.subtitleFontSize,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var titleTextStyle = CustomTextStyles.title(
            fontSize: titleFontSize, fontWeight: FontWeight.bold);
    var subtitleTextStyle = CustomTextStyles.subtitle(fontSize: subtitleFontSize, fontWeight: FontWeight.w400);

    return Column(
      children: [
        Text(
          'Radio La Plata',
          style: titleTextStyle,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: titleFontSize * 0.3),
        Text(
          'AM xx | Radio (Nombre)',
          style: subtitleTextStyle,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: titleFontSize * 0.3),
        Text(
          'La Plata, Buenos Aires, Argentina',
          style: subtitleTextStyle,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
