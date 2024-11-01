import 'package:flutter/material.dart';
import 'package:ratingapp_mobile/screens/widgets/web_view_widget.dart';

class MainScreenVideoWidget extends StatelessWidget {
  const MainScreenVideoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Text(
                'En Vivo',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Poppins',
                ),
              ),
              SizedBox(width: 10),
              Icon(
                Icons.wifi_tethering_outlined,
                color: Colors.blue,
                size: 30,
              ),
            ],
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onLongPress: () {
              Navigator.pushNamed(context, '/fullScreenVideoPlayer');
            },
            child: Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: WebViewWidgetExample(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
