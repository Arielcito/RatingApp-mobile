import 'package:flutter/material.dart';
import 'package:ratingapp_mobile/theme/custom_styles.dart';
import 'package:ratingapp_mobile/ui/widgets/app_bars/main_bottom_nav_bar.dart';
import 'package:ratingapp_mobile/ui/widgets/banner_widget.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../widgets/secondary_app_bar_widget.dart';

class OnlineNewspapersScreen extends StatelessWidget {
  const OnlineNewspapersScreen({super.key});

  List<Map<String, String>> generateArticles() {
    return [
      {
        'url': 'https://ejemplo.com/noticia1',
        'title': 'Título de la Noticia 1',
      },
      {
        'url': 'https://ejemplo.com/noticia2',
        'title': 'Título de la Noticia 2',
      },
      {
        'url': 'https://ejemplo.com/noticia3',
        'title': 'Título de la Noticia 3',
      },
    ];
  }

  @override
  Widget build(BuildContext context) {
    final articles = generateArticles();
    
    return Scaffold(
      backgroundColor: CustomStyles.colorDeepBlue,
      appBar: const SecondaryAppBarWidget(),
      body: Column(
        children: [
          const BannerWidget(
            banners: ['assets/images/sample_banner.png', 'assets/images/cyber-monday.jpg'],
            height: 160,
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
              itemCount: articles.length,
              itemBuilder: (context, index) {
                final article = articles[index];
                return Card(
                  margin: const EdgeInsets.only(bottom: 16),
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(article['title']!),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => WebViewScreen(
                                url: article['url']!,
                                title: article['title']!,
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: const MainBottomNavBar(currentIndex: 4),
    );
  }
}

class WebViewScreen extends StatelessWidget {
  final String url;
  final String title;

  const WebViewScreen({
    super.key,
    required this.url,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: WebViewWidget(
        controller: WebViewController()
          ..loadRequest(Uri.parse(url))
          ..setJavaScriptMode(JavaScriptMode.unrestricted),
      ),
    );
  }
}
