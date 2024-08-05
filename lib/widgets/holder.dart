// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:news_app_ui_setup/models/article_model.dart';
// import 'package:news_app_ui_setup/services/news_service.dart';
// import 'package:news_app_ui_setup/widgets/news_tile.dart';

// class NewsListView extends StatefulWidget {
//   const NewsListView({super.key});

//   @override
//   State<NewsListView> createState() => _NewsListViewState();
// }

// class _NewsListViewState extends State<NewsListView> {
//   List<ArticleModel> articles = [];
//   bool isLoading = true;
//   @override
//   void initState() {
//     super.initState();
//     getNews();
//   }

//   Future<void> getNews() async {
//     articles = await NewsService(Dio()).getNews();
//     isLoading = false;
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return isLoading
//         ?const SliverFillRemaining(
//             hasScrollBody: false,
//             child: Center(child: CircularProgressIndicator()))
//         : SliverList(
//             //lazyList
//             delegate: SliverChildBuilderDelegate(
//             childCount: articles.length,
//             (context, index) {
//               return NewsTile(articleModel: articles[index]);
//             },
//           ));
//   }
// }
