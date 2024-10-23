import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {

  const AppBarWidget({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(0.0); // or any other size you want

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 0.0,
    );
  }
}