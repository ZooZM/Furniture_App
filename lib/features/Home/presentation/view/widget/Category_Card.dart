import 'package:flutter/material.dart';
import 'package:furniture_app/constant.dart';
import 'package:furniture_app/core/utils/Styles.dart';
import 'package:furniture_app/features/Home/presentation/view%20Model/category_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.onPress,
    required this.model,
  });
  final CategoryModel model;
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
                    onPress ? model.imageWhite : model.imageBlack,
                    height: 50,
                    width: 50,
                  ),
                ),
                const SizedBox(),
                Text(
                  model.name,
                  style: Styles.textStyle18.copyWith(
                    color: onPress ? kwhite : Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
