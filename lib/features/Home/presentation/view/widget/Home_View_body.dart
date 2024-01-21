import 'package:flutter/material.dart';
import 'package:furniture_app/constant.dart';
import 'package:furniture_app/core/utils/Styles.dart';
import 'package:furniture_app/features/Home/presentation/view/widget/Category_Card.dart';
import 'package:furniture_app/features/Home/presentation/view/widget/Home_App_Bar.dart';
import 'package:furniture_app/features/Home/presentation/view/widget/Home_Text_Field.dart';

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
          CategoryListView(),
        ],
      ),
    );
  }
}
