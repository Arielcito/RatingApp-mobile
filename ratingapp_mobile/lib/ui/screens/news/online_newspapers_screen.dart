import 'package:flutter/material.dart';
import 'package:ratingapp_mobile/theme/custom_styles.dart';
import 'package:ratingapp_mobile/ui/widgets/app_bars/main_bottom_nav_bar.dart';
import 'package:ratingapp_mobile/ui/widgets/newspaper_article_widget.dart';

import '../../widgets/secondary_app_bar_widget.dart';

class OnlineNewspapersScreen extends StatelessWidget {
  const OnlineNewspapersScreen({super.key});

  List<Map<String, String>> generateArticles() {
    return [
      {
        'imageUrl': 'https://via.placeholder.com/400x200',
        'title': 'Título de la Noticia 1',
        'description':
            'Descripción breve de la noticia 1. Aquí se muestra un resumen del contenido del artículo.',
        'content':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus lacinia odio vitae vestibulum vestibulum. Cras venenatis euismod malesuada. Integer vitae diam vel ligula ultricies convallis id at augue. Praesent pharetra leo eget arcu aliquet, ut facilisis neque congue.',
      },
      {
        'imageUrl': 'https://via.placeholder.com/400x200',
        'title': 'Título de la Noticia 2',
        'description':
            'Descripción breve de la noticia 2. Aquí se muestra un resumen del contenido del artículo.',
        'content':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque in varius ligula, nec varius risus. Curabitur blandit odio vel urna faucibus, non scelerisque quam tincidunt. Maecenas sed orci vitae nisi aliquam elementum.',
      },
      {
        'imageUrl': 'https://via.placeholder.com/400x200',
        'title': 'Título de la Noticia 3',
        'description':
            'Descripción breve de la noticia 3. Aquí se muestra un resumen del contenido del artículo.',
        'content':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse consectetur, justo sit amet bibendum aliquet, odio nisi auctor odio, ut vestibulum nisl elit ac magna. Integer venenatis sem at venenatis faucibus.',
      },
    ];
  }

  @override
  Widget build(BuildContext context) {
    final articles = generateArticles();
    
    return Scaffold(
      backgroundColor: CustomStyles.colorDeepBlue,
      appBar: const SecondaryAppBarWidget(),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
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
      bottomNavigationBar: const MainBottomNavBar(currentIndex: 4),
    );
  }
}
