import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/article_model.dart';
import 'package:news_app_ui_setup/services/news_service.dart';
import 'package:news_app_ui_setup/widgets/news_list_view.dart';

class NewListVeiwBuilder extends StatefulWidget {
  const NewListVeiwBuilder({super.key, required this.category});
  final String category;
  @override
  State<NewListVeiwBuilder> createState() => _NewListVeiwBuilderState();
}

class _NewListVeiwBuilderState extends State<NewListVeiwBuilder> {
  var future;
  @override
  void initState() {
    super.initState();
    future = NewsService(Dio()).getNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(articles: snapshot.data!);
        } else if (snapshot.hasError) {
          return const SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: Text('Oops There Was An Erorr, Try Later'),
            ),
          );
        } else {
          return const SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
  



// isLoading
//         ? const SliverFillRemaining(
//             hasScrollBody: false,
//             child: Center(child: CircularProgressIndicator()))
//         : articles.isNotEmpty
//             ? NewsListView(articles: articles)
//             : const SliverFillRemaining(
//                 hasScrollBody: false,
//                 child:
//                     Center(child: Text('Oops There Was An Erorr, Try Later')));