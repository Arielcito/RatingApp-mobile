import 'package:flutter/material.dart';
import 'package:ratingapp_mobile/theme/custom_styles.dart';
import 'package:ratingapp_mobile/ui/widgets/main_app_bar_widget.dart';
import 'package:ratingapp_mobile/ui/widgets/main_bottom_bar_widget.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBarWidget(),
      bottomNavigationBar: const MainBottomBarWidget(currentIndex: 2),
      body: Container(
        color: Colors.grey[100],
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16.0),
              color: CustomStyles.colorDeepBlue,
              child: const Text(
                'Mis Favoritos',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(16.0),
                children: const [
                  // Aquí se agregarán los artículos favoritos
                  Center(
                    child: Text(
                      'No tienes artículos favoritos guardados',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
} 