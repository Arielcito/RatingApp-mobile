import 'package:flutter/material.dart';
import 'package:ratingapp_mobile/theme/custom_styles.dart';

class MainBottomNavBar extends StatelessWidget {
  final int currentIndex;

  const MainBottomNavBar({
    super.key,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    double padding = screenWidth * 0.05;
    double iconSize = screenWidth * 0.06;

    return Container(
      decoration: BoxDecoration(
        color: CustomStyles.colorWhite,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, -3),
          ),
        ],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(padding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _NavBarButton(
              icon: Icons.monitor_outlined,
              iconSize: iconSize,
              isSelected: currentIndex == 0,
              onTap: () =>
                  Navigator.pushNamed(context, '/fullScreenVideoPlayer'),
            ),
            _NavBarButton(
              icon: Icons.radio_outlined,
              iconSize: iconSize,
              isSelected: currentIndex == 1,
              onTap: () => Navigator.pushNamed(context, '/radio'),
            ),
            _NavBarButton(
              icon: Icons.home,
              iconSize: iconSize,
              isSelected: currentIndex == 2,
              onTap: () => Navigator.pushNamed(context, '/home'),
            ),
            _NavBarButton(
              icon: Icons.wifi_tethering_outlined,
              iconSize: iconSize,
              isSelected: currentIndex == 3,
              onTap: () =>
                  Navigator.pushNamed(context, '/fullScreenVideoPlayer'),
            ),
            _NavBarButton(
              icon: Icons.description_outlined,
              iconSize: iconSize,
              isSelected: currentIndex == 4,
              onTap: () => Navigator.pushNamed(context, '/news'),
            ),
          ],
        ),
      ),
    );
  }
}

class _NavBarButton extends StatelessWidget {
  final IconData icon;
  final double iconSize;
  final bool isSelected;
  final VoidCallback onTap;

  const _NavBarButton({
    required this.icon,
    required this.iconSize,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: isSelected ? CustomStyles.colorDeepBlue : Colors.grey,
            size: iconSize,
          ),
        ],
      ),
    );
  }
}
