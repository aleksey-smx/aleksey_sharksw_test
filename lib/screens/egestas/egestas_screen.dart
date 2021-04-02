import 'package:flutter/material.dart';
import 'package:sharksw_aleksey_test/models/article.dart';
import 'package:sharksw_aleksey_test/screens/egestas/article_widget.dart';
import 'package:sharksw_aleksey_test/widgets/app_divider.dart';

class EgestasScreen extends StatelessWidget {
  static const String routeName = '/egestas';

  List<Article> _articleList = [
    Article(
      title: 'Pellentesque nulla enim sed.',
      subTitle:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mattis praesent lorem egestas tellus orci leo.',
      image: 'assets/images/article_image.png',
      paragraph: [
        'Mus sed at ligula.',
        'Tortor sem.',
        'Quam in nunc nibh mattis in diam.'
      ],
    ),
    Article(
      image: 'assets/images/article_image.png',
      paragraph: [
        'A sodales et purus leo.',
        'Est lorem.',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Semper amet viverra non justo a morbi blandit.',
        'Lacinia nunc curabitur velit.',
        'Lacinia non.',
        'Diam ac molestie.',
        'Volutpat id sed.'
      ],
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60.0),
        child: ListView.builder(
          itemCount: _articleList.length,
          itemBuilder: (context, index) {
            return ArticleWidget(
              article: _articleList[index],
            );
          },
        ),
      ),
    );
  }
}
