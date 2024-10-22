import 'package:flutter/material.dart';

class WelcomeScreenTopStack extends StatelessWidget {
  const WelcomeScreenTopStack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    double screenWidth = queryData.size.width;
    double ellipseImageWidth = 110;
    // double ellipseImageHeight = 109;
    const textStyle = TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w600,
        fontFamily: 'Poppins');
    return Stack(
      alignment: Alignment.topLeft,
      children: [
        const Positioned(
          top: 0,
          right: 0,
          child: Image(
            image: AssetImage('assets/images/welcome_screen/Ellipse 1.png'),
          ),
        ),
        const Positioned(
          top: 0,
          right: 0,
          child: Image(
            image: AssetImage('assets/images/welcome_screen/Ellipse 2.png'),
          ),
        ),
        Positioned(
          top: 30,
          left: screenWidth / 2 - (ellipseImageWidth / 2),
          child: const Image(
            image: AssetImage(
              'assets/images/welcome_screen/Ellipse 58.png',
            ),
          ),
        ),
        const Positioned(
          top: 80,
          left: 30,
          child: Column(
            children: [
              Text(
                ' Radio',
                style: textStyle,
              ),
              SizedBox(height: 5),
              Image(
                image: AssetImage(
                  'assets/images/welcome_screen/Ellipse 57.png',
                ),
              ),
            ],
          ),
        ),
        const Positioned(
          top: 140,
          right: 30,
          child: Image(
            image: AssetImage(
              'assets/images/welcome_screen/Ellipse 59.png',
            ),
          ),
        ),
        Positioned(
          top: 267,
          left: screenWidth / 2 - (ellipseImageWidth / 2),
          child: Row(
            children: [
              Image(
                image: const AssetImage(
                  'assets/images/welcome_screen/Ellipse 60.png',
                ),
                width: ellipseImageWidth,
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                "Streaming",
                style: textStyle,
              )
            ],
          ),
        ),
        const Positioned(
          top: 10,
          left: 80,
          child: Text(
            "TV",
            style: textStyle,
          ),
        ),
        Positioned(
          top: 240,
          left: screenWidth / 2 - 84,
          child: const Text(
            "Diario online",
            style: textStyle,
          ),
        ),
      ],
    );
  }
}
