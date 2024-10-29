import 'package:flutter/material.dart';
import 'package:ratingapp_mobile/screens/custom_styles.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(0.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: CustomStyles.colorDeepBlue,
      toolbarHeight: 0.0,
    );
  }
}
