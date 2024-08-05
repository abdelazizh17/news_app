
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/article_model.dart';

import 'package:news_app_ui_setup/widgets/news_tile.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key, required this.articles});
  final List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
        //lazyList
        delegate: SliverChildBuilderDelegate(
      childCount: articles.length,
      (context, index) {
        return NewsTile(articleModel: articles[index]);
      },
    ));
  }
}
