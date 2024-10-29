import 'package:flutter/material.dart';
import 'package:ratingapp_mobile/screens/custom_styles.dart';

class MainAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: CustomStyles.colorDeepBlue,
      elevation: 1,
      automaticallyImplyLeading: false,
      title: Image.asset(
        'assets/images/rating_app_logo.png',
        fit: BoxFit.contain,
        height: 48,
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.favorite),
          iconSize: 45,
          color: Colors.red,
          onPressed: () {},
          padding: EdgeInsets.zero,
        ),
        IconButton(
          icon: const Icon(Icons.emoji_events_outlined),
          iconSize: 45,
          color: Colors.yellow,
          onPressed: () {},
          padding: EdgeInsets.zero,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: GestureDetector(
            onTap: () {},
            child: const CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/images/sample_pfp.jpg'),
            ),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
