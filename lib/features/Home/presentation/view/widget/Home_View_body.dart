import 'package:flutter/material.dart';
import 'package:furniture_app/core/utils/Styles.dart';
import 'package:furniture_app/features/Home/presentation/view/widget/category_listview.dart';
import 'package:furniture_app/features/Home/presentation/view/widget/home_app_bar.dart';
import 'package:furniture_app/features/Home/presentation/view/widget/home_text_field.dart';
import 'package:furniture_app/features/Home/presentation/view/widget/popular_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HomeAppBar(),
          Text(
            'Choos your \nSuitable funiture',
            style: Styles.textStyle30,
          ),
          HomeTextField(),
          Text(
            'Categories',
            style: Styles.textStyle20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: CategoryListView(),
          ),
          Text(
            'Popular',
            style: Styles.textStyle20,
          ),
          PopularItem(),
        ],
      ),
    );
  }
}
