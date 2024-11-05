import 'package:flutter/material.dart';
import 'package:ratingapp_mobile/theme/custom_styles.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    // Obtenemos el ancho de la pantalla
    final screenWidth = MediaQuery.of(context).size.width;

    // Calculamos el tamaño de los íconos y la imagen del logo de manera proporcional
    final iconSize =
        screenWidth * 0.08; // Por ejemplo, 8% del ancho de la pantalla
    final logoHeight = screenWidth *
        0.12; // Aproximadamente 12% del ancho de pantalla para el logo
    final avatarRadius = screenWidth * 0.06; // 6% del ancho para el avatar
    final horizontalSpacing =
        screenWidth * 0.02; // 2% de espacio horizontal entre íconos

    return AppBar(
      backgroundColor: CustomStyles.colorDeepBlue,
      elevation: 1,
      title: null,
      automaticallyImplyLeading: false,
      flexibleSpace: Center(
        child: Column(
          children: [
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/rating_app_logo.png',
                  height: logoHeight,
                  fit: BoxFit.contain,
                ),
                SizedBox(width: horizontalSpacing),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/favorites');
                  },
                  icon: const Icon(Icons.favorite),
                  iconSize: iconSize,
                  color: Colors.red,
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                ),
                SizedBox(width: horizontalSpacing),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/benefits');
                  },
                  icon: const Icon(Icons.emoji_events_outlined),
                  iconSize: iconSize,
                  color: Colors.yellow,
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                ),
                SizedBox(width: horizontalSpacing),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/user');
                  },
                  child: CircleAvatar(
                    radius: avatarRadius,
                    backgroundImage:
                        const AssetImage('assets/images/sample_pfp.jpg'),
                  ),
                ),
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 16);
}
