import 'package:flutter/material.dart';
import 'package:furniture_app/core/utils/Paths.dart';
import 'package:furniture_app/features/Home/presentation/view/widget/Category_Card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoryBlack.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: CategoryCard(
            image: categoryBlack[index].path,
            text: categoryBlack[index].name,
            onPress: false,
          ),
        ),
      ),
    );
  }
}
