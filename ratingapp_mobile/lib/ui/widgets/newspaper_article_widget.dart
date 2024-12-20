import 'package:flutter/material.dart';
import 'package:ratingapp_mobile/theme/custom_styles.dart';
import 'package:ratingapp_mobile/ui/screens/article_detail/article_detail_screen.dart';
import 'package:ratingapp_mobile/ui/widgets/banner_widget.dart';

class NewspaperArticleWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final String content;

  const NewspaperArticleWidget({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ArticleDetailScreen(
              imageUrl: imageUrl,
              title: title,
              description: description,
              content: content,
            ),
          ),
        );
      },
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                  child: Image.network(
                    imageUrl,
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            title,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: CustomStyles.colorDeepBlue,
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.favorite_border),
                            onPressed: () {
                              // Add logic to handle adding to favorites
                            },
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Text(
                        description,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
} 