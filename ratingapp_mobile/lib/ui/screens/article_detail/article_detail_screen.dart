import 'package:flutter/material.dart';
import 'package:ratingapp_mobile/theme/custom_colors.dart';
import 'package:ratingapp_mobile/theme/custom_styles.dart';
import 'package:ratingapp_mobile/theme/custom_text_styles.dart';

class ArticleDetailScreen extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final String content;
  const ArticleDetailScreen({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    final toolbarTextStyle = CustomTextStyles.title(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: CustomColors.bluePrimary,
    );

    final titleTextStyle = TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: CustomStyles.colorDeepBlue,
    );

    const contentTextStyle = TextStyle(
      fontSize: 16,
      color: Colors.black87,
      height: 1.5,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Noticia',
          style: CustomTextStyles.body(fontSize: 20),
        ),
        backgroundColor: CustomColors.bluePrimary,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        toolbarTextStyle: toolbarTextStyle,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              imageUrl,
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: titleTextStyle,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    description,
                    style: contentTextStyle,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    content,
                    style: contentTextStyle,
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
