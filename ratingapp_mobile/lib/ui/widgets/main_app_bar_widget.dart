import 'package:flutter/material.dart';
import 'package:ratingapp_mobile/theme/custom_styles.dart';

class MainAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: CustomStyles.colorDeepBlue,
      elevation: 1,
      title: null,
      automaticallyImplyLeading: false,
      flexibleSpace: Center(
        child: Column(
          children: [
            const SizedBox(height: kToolbarHeight - 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                Image.asset(
                  'assets/images/rating_app_logo.png',
                  height: 48,
                  fit: BoxFit.contain,
                ),
                const SizedBox(width: 10),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/favorites');
                  },
                  icon: const Icon(Icons.favorite),
                  iconSize: 45,
                  color: Colors.red,
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                ),
                const SizedBox(width: 10),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/benefits');
                  },
                  icon: const Icon(Icons.emoji_events_outlined),
                  iconSize: 45,
                  color: Colors.yellow,
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                ),
                const SizedBox(width: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/user');
                  },
                  child: const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/sample_pfp.jpg'),
                  ),
                ),
                const Spacer(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 30);
}
