import 'package:flutter/material.dart';
import 'package:ratingapp_mobile/theme/custom_styles.dart';
import 'package:ratingapp_mobile/ui/screens/user/widgets/user_menu_buttons.dart';
import 'package:ratingapp_mobile/ui/widgets/app_bars/main_bottom_nav_bar.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final double paddingHorizontal = size.width * 0.06;
    final double titleFontSize = size.width * 0.06;
    final double subtitleFontSize = size.width * 0.04;
    final double dynamicToolbarHeight =
        kToolbarHeight + MediaQuery.of(context).padding.top + 20;

    final double avatarDiameter = size.width * 0.5;

    final double sectionSpacing = size.height * 0.03;

    return Scaffold(
      backgroundColor: CustomStyles.colorDeepBlue,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _UserTopStack(
                      dynamicToolbarHeight: dynamicToolbarHeight,
                      avatarDiameter: avatarDiameter,
                      paddingHorizontal: paddingHorizontal,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: paddingHorizontal),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _UserIconCarousel(size: size),
                          SizedBox(height: sectionSpacing),
                          _UserGreeting(titleFontSize: titleFontSize),
                          SizedBox(height: sectionSpacing),
                          const UserMenuButtons(),
                          SizedBox(height: sectionSpacing),
                          _UserLogoutButton(subtitleFontSize: subtitleFontSize),
                          SizedBox(height: sectionSpacing),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: const MainBottomNavBar(currentIndex: -1),
    );
  }
}

class _UserTopStack extends StatelessWidget {
  final double dynamicToolbarHeight;
  final double avatarDiameter;
  final double paddingHorizontal;

  const _UserTopStack({
    required this.dynamicToolbarHeight,
    required this.avatarDiameter,
    required this.paddingHorizontal,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            'assets/images/user_screen/Ellipse 51.png',
            alignment: Alignment.topCenter,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            height: dynamicToolbarHeight,
            padding: const EdgeInsets.only(left: 8),
            color: Colors.transparent,
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: paddingHorizontal, vertical: paddingHorizontal * 2),
          child: Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              width: avatarDiameter,
              height: avatarDiameter,
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/sample_pfp.jpg'),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _UserIconCarousel extends StatelessWidget {
  final Size size;

  const _UserIconCarousel({required this.size});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.07,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.01),
            child: Image.asset(
              'assets/images/icon-rating-app.png',
              height: size.height * 0.05,
              width: size.height * 0.05,
            ),
          );
        },
      ),
    );
  }
}

class _UserGreeting extends StatelessWidget {
  final double titleFontSize;

  const _UserGreeting({required this.titleFontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      '¡Hola Linus!',
      style: TextStyle(
        color: Colors.white,
        fontSize: titleFontSize,
        fontFamily: "Poppins",
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class _UserLogoutButton extends StatelessWidget {
  final double subtitleFontSize;

  const _UserLogoutButton({required this.subtitleFontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Cerrar sesión',
      style: TextStyle(
        color: Colors.red,
        fontSize: subtitleFontSize,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
