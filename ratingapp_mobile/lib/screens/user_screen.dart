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
      body: const Stack(
        children: [
          UserScreenTopStack(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '¡Hola Linus!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  UserMenuButtons(),
                  SizedBox(height: 20),
                  Text(
                    'Cerrar sesión',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 20),
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
