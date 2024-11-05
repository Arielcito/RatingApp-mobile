import 'package:flutter/material.dart';
import 'package:ratingapp_mobile/theme/custom_colors.dart';

class SimpleAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SimpleAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(0.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: CustomColors.bluePrimary,
      toolbarHeight: 0.0,
    );
  }
}
