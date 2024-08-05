import 'package:flutter/material.dart';

import 'package:news_app_ui_setup/widgets/categories_list_view.dart';
import 'package:news_app_ui_setup/widgets/news_list_view_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        centerTitle: true,
        elevation: 0,
        title: RichText(
          text: const TextSpan(
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 23,
            ),
            children: [
              TextSpan(
                text: 'News',
                style: TextStyle(
                  color: Colors.black, // Color for "News"
                ),
              ),
              TextSpan(
                text: 'Cloud',
                style: TextStyle(
                  color: Colors.orange, // Color for "Cloud"
                ),
              ),
            ],
          ),
        ),
      ),
      body:  const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(child: CategoriesListView()),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 32,
                ),
              ),
              NewListVeiwBuilder(category: 'top'),
            ],
          )),
    );
  }
}

// Column(
//           children: [
//             CategoriesListView(),
//             SizedBox(
//               height: 32,
//             ),
//             Expanded(child: NewsListView()),
//           ],
//         ),



// Column(
//         children: [
//           Container(
//             height: 150,
//             child: ListView.builder(
//               scrollDirection: Axis.horizontal,
//               itemCount: cards.length,
//               itemBuilder: (context, index) {
//                 return CategoryCard(card: cards[index]);
//               },
//             ),
//           ),
//         ],
//       ),