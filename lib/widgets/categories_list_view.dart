import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/category_model.dart';

import 'package:news_app_ui_setup/widgets/category_card.dart';

class CategoriesListView extends StatefulWidget {
  const CategoriesListView({
    super.key,
  });

  @override
  State<CategoriesListView> createState() => _CategoriesListViewState();
}

class _CategoriesListViewState extends State<CategoriesListView> {
  final List<CategoryModel> cards = const [
    CategoryModel(image: 'assets/Business.avif', categoryName: 'Business'), //
    CategoryModel(image: 'assets/Sport.avif', categoryName: 'Sports'), //
    CategoryModel(image: 'assets/Technology.jpg', categoryName: 'Technology'),
    CategoryModel(
        image: 'assets/Entertaiment.jpg', categoryName: 'Entertaiment'),
    CategoryModel(image: 'assets/Health.webp', categoryName: 'Health'),
    CategoryModel(image: 'assets/science.avif', categoryName: 'Science'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      width: double.infinity,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: cards.length,
        itemBuilder: (context, index) {
          return CategoryCard(
            card: cards[index]
          );
        },
      ),
    );
  }
}
