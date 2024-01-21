import 'package:flutter/material.dart';
import 'package:furniture_app/constant.dart';
import 'package:furniture_app/core/utils/Styles.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CategoryCard(
            image: 'assets/images/table2.png', text: 'table', onPress: false),
      ],
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard(
      {super.key,
      required this.image,
      required this.text,
      required this.onPress});
  final String image;
  final String text;
  final bool onPress;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      child: AspectRatio(
        aspectRatio: 3 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: onPress ? korange : kwhite,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Column(
              children: [
                Expanded(
                  child: Image.asset(
                    image,
                    height: 50,
                    width: 50,
                  ),
                ),
                const SizedBox(),
                Text(
                  text,
                  style: Styles.textStyle18
                      .copyWith(color: onPress ? kwhite : Colors.black),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
