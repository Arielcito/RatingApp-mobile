import 'package:flutter/material.dart';
import 'package:ratingapp_mobile/theme/custom_styles.dart';
import 'package:ratingapp_mobile/ui/widgets/app_bars/main_bottom_nav_bar.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  Widget _buildNotificationCard({
    required String title,
    required String message,
    required DateTime date,
    bool isUnread = false,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        color: isUnread ? Colors.white : Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(12),
        border: isUnread
            ? Border.all(color: const Color(0xFF00A5E0), width: 2)
            : null,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: isUnread ? FontWeight.bold : FontWeight.w500,
                      fontFamily: 'Poppins',
                      color: const Color(0xFF005986),
                    ),
                  ),
                ),
                if (isUnread)
                  Container(
                    width: 12,
                    height: 12,
                    decoration: const BoxDecoration(
                      color: Color(0xFF00A5E0),
                      shape: BoxShape.circle,
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              message,
              style: const TextStyle(
                fontSize: 16,
                fontFamily: 'Poppins',
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              '${date.day}/${date.month}/${date.year} ${date.hour}:${date.minute.toString().padLeft(2, '0')}',
              style: const TextStyle(
                fontSize: 14,
                fontFamily: 'Poppins',
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomStyles.colorDeepBlue,
      appBar: AppBar(
        title: const Text(
          'Notificaciones',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 20,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.check_circle_outline),
            onPressed: () {
              // Implementar lógica para marcar todas como leídas
            },
            tooltip: 'Marcar todas como leídas',
          ),
        ],
      ),
      body: ListView(
        children: [
          _buildNotificationCard(
            title: 'Nueva encuesta disponible',
            message: '¡Hay una nueva encuesta sobre servicios públicos esperando por ti!',
            date: DateTime.now(),
            isUnread: true,
          ),
          _buildNotificationCard(
            title: 'Recordatorio',
            message: 'No olvides completar la encuesta pendiente antes de que expire.',
            date: DateTime.now().subtract(const Duration(hours: 2)),
            isUnread: false,
          ),
          _buildNotificationCard(
            title: 'Puntos ganados',
            message: '¡Felicitaciones! Has ganado 500 puntos por tu última participación.',
            date: DateTime.now().subtract(const Duration(days: 1)),
            isUnread: false,
          ),
          _buildNotificationCard(
            title: 'Actualización de membresía',
            message: 'Tu membresía ha sido actualizada a nivel Oro.',
            date: DateTime.now().subtract(const Duration(days: 2)),
            isUnread: false,
          ),
        ],
      ),
      bottomNavigationBar: const MainBottomNavBar(currentIndex: -1),
    );
  }
} 