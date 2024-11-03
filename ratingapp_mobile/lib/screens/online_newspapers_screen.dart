import 'package:flutter/material.dart';
import 'package:ratingapp_mobile/screens/custom_styles.dart';
import 'package:ratingapp_mobile/screens/widgets/main_app_bar_widget.dart';
import 'package:ratingapp_mobile/screens/widgets/main_bottom_bar_widget.dart';
import 'package:ratingapp_mobile/screens/widgets/newspaper_article_widget.dart';

class OnlineNewspapersScreen extends StatelessWidget {
  const OnlineNewspapersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Esta lista podría venir de una API o base de datos en una implementación real
    final List<Map<String, String>> articles = [
      {
        'imageUrl': 'https://via.placeholder.com/400x200',
        'title': 'Título de la Noticia 1',
        'description': 'Descripción breve de la noticia 1. Aquí se muestra un resumen del contenido del artículo. ',
        'content': 'Contenido completo de la noticia 1. Aquí se muestra el contenido completo del artículo.Contenido completo de la noticia 1. Aquí se muestra el contenido completo del artículo.Contenido completo de la noticia 1. Aquí se muestra el contenido completo del artículo.Contenido completo de la noticia 1. Aquí se muestra el contenido completo del artículo.Contenido completo de la noticia 1. Aquí se muestra el contenido completo del artículo.Contenido completo de la noticia 1. Aquí se muestra el contenido completo del artículo.Contenido completo de la noticia 1. Aquí se muestra el contenido completo del artículo.Contenido completo de la noticia 1. Aquí se muestra el contenido completo del artículo.Contenido completo de la noticia 1. Aquí se muestra el contenido completo del artículo.Contenido completo de la noticia 1. Aquí se muestra el contenido completo del artículo.Contenido completo de la noticia 1. Aquí se muestra el contenido completo del artículo.Contenido completo de la noticia 1. Aquí se muestra el contenido completo del artículo.Contenido completo de la noticia 1. Aquí se muestra el contenido completo del artículo.Contenido completo de la noticia 1. Aquí se muestra el contenido completo del artículo.Contenido completo de la noticia 1. Aquí se muestra el contenido completo del artículo.Contenido completo de la noticia 1. Aquí se muestra el contenido completo del artículo.',
      },
      {
        'imageUrl': 'https://via.placeholder.com/400x200',
        'title': 'Título de la Noticia 2',
        'description': 'Descripción breve de la noticia 2. Aquí se muestra un resumen del contenido del artículo.',
        'content': 'Contenido completo de la noticia 2. Aquí se muestra el contenido completo del artículo.',
      },
      // Puedes agregar más artículos aqu��
    ];

    return Scaffold(
      appBar: const MainAppBarWidget(),
      body: Container(
        color: CustomStyles.colorDeepBlue,
        child: ListView.builder(
          padding: const EdgeInsets.only(top: 16, bottom: 16),
          itemCount: articles.length,
          itemBuilder: (context, index) {
            final article = articles[index];
            return NewspaperArticleWidget(
              imageUrl: article['imageUrl']!,
              title: article['title']!,
              description: article['description']!,
              content: article['content']!,
            );
          },
        ),
      ),
      bottomNavigationBar: const MainBottomBarWidget(currentIndex: 4),
    );
  }
} 