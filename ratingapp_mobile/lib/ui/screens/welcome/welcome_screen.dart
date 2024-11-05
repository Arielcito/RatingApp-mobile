import 'package:flutter/material.dart';
import 'package:ratingapp_mobile/theme/custom_colors.dart';
import 'package:ratingapp_mobile/ui/screens/welcome/widgets/bottom_stack.dart';
import 'package:ratingapp_mobile/ui/screens/welcome/widgets/login_buttons.dart';
import 'package:ratingapp_mobile/ui/screens/welcome/widgets/logos_section.dart';
import 'package:ratingapp_mobile/ui/screens/welcome/widgets/top_stack.dart';
import 'package:ratingapp_mobile/ui/widgets/app_bars/simple_app_bar.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final double paddingHorizontal =
        size.width * 0.08; // 8% del ancho de la pantalla
    final double separatorVertical =
        size.height * 0.04; // 4% del alto de la pantalla
    final double titleFontSize =
        size.width * 0.06; // 6% del ancho de la pantalla
    final double buttonFontSize =
        size.width * 0.05; // 3% del ancho de la pantalla

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
                    const WelcomeBottomStack(),
                    Column(
                      children: [
                        const TopStack(),
                        LogosSection(
                          separatorVertical: separatorVertical,
                          titleFontSize: titleFontSize,
                        ),
                        const Spacer(),
                        LoginButtons(
                          paddingHorizontal: paddingHorizontal,
                          separatorVertical: separatorVertical,
                          buttonFontSize: buttonFontSize,
                        ),
                        const Spacer(),
                      ],
                    )
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
