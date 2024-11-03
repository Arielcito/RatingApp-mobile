import 'package:flutter/material.dart';
import 'package:ratingapp_mobile/screens/custom_styles.dart';
import 'package:ratingapp_mobile/screens/user_screen_widgets/user_menu_buttons.dart';
import 'package:ratingapp_mobile/screens/user_screen_widgets/user_screen_top_stack.dart';
import 'package:ratingapp_mobile/screens/widgets/main_bottom_bar_widget.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomStyles.colorDeepBlue,
      body: Stack(
        children: [
          const UserScreenTopStack(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Image.asset(
                            'assets/images/icon-rating-app.png',
                            height: 40,
                            width: 40,
                          ),
                        );
                      },
                    ),
                  ),
                  const Text(
                    '¡Hola Linus!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const UserMenuButtons(),
                  const SizedBox(height: 20),
                  const Text(
                    'Cerrar sesión',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const MainBottomBarWidget(currentIndex: -1),
    );
  }
}
