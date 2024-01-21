import 'package:flutter/material.dart';
import 'package:furniture_app/features/Home/presentation/view/widget/Category_Card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CategoryCard(
          image: 'assets/images/table2.png',
          text: 'table',
          onPress: false,
        ),
        CategoryCard(
          image: 'assets/images/table2.png',
          text: 'table',
          onPress: false,
        ),
        CategoryCard(
          image: 'assets/images/table2.png',
          text: 'table',
          onPress: false,
        ),
        CategoryCard(
          image: 'assets/images/table2.png',
          text: 'table',
          onPress: false,
        ),
      ],
    );
  }
}
