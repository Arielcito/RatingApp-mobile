import 'package:flutter/material.dart';
import 'package:ratingapp_mobile/theme/custom_colors.dart';
import 'package:ratingapp_mobile/ui/screens/login/widgets/bottom_stack.dart';
import 'package:ratingapp_mobile/ui/screens/login/widgets/top_stack.dart';
import 'package:ratingapp_mobile/ui/widgets/app_bars/simple_app_bar.dart';
import 'package:ratingapp_mobile/ui/screens/login/widgets/content_section.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final double paddingHorizontal =
        size.width * 0.06; // 6% del ancho de la pantalla
    final double separatorVertical =
        size.height * 0.03; // 4% del alto de la pantalla
    final double titleFontSize =
        size.width * 0.06; // 6% del ancho de la pantalla
    final double subtitleFontSize =
        size.width * 0.04; // 4% del ancho de la pantalla

    return Scaffold(
      appBar: const SimpleAppBar(),
      backgroundColor: CustomColors.blackBg,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Stack(
                  children: [
                    const TopStack(),
                    ContentSection(
                      paddingHorizontal: paddingHorizontal,
                      separatorVertical: separatorVertical,
                      titleFontSize: titleFontSize,
                      subtitleFontSize: subtitleFontSize,
                    ),
                    const BottomStack()
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
