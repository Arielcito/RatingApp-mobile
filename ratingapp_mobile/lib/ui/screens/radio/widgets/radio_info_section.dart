import 'package:flutter/material.dart';

class RadioInfoSection extends StatelessWidget {
  final double titleFontSize;
  final double subtitleFontSize;

  const RadioInfoSection({
    required this.titleFontSize,
    required this.subtitleFontSize,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var titleTextStyle = TextStyle(
            color: Colors.white,
            fontSize: titleFontSize,
            fontFamily: "Poppins",
            fontWeight: FontWeight.bold,
          );
    var subtitleTextStyle = TextStyle(
            color: Colors.white,
            fontSize: subtitleFontSize,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w400,
          );
    var subtitleTextStyle2 = TextStyle(
            color: Colors.white,
            fontSize: subtitleFontSize,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w400,
          );
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
          style: subtitleTextStyle2,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
