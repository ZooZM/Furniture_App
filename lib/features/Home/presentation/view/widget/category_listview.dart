import 'package:flutter/material.dart';
import 'package:furniture_app/features/Home/data/home_path.dart';
import 'package:furniture_app/features/Home/presentation/view/widget/Category_Card.dart';

class CategoryListView extends StatefulWidget {
  const CategoryListView({super.key});

  @override
  State<CategoryListView> createState() => _CategoryListViewState();
}

class _CategoryListViewState extends State<CategoryListView> {
  List<bool> check = [true, false, false, false];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoryList.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: InkWell(
            onTap: () {
              setState(() {
                for (var i = 0; i < check.length; i++) {
                  if (i == index) {
                  } else {
                    check[i] = false;
                  }
                }
                check[index] = !check[index];
              });
            },
            child: CategoryCard(
              model: categoryList[index],
              onPress: check[index],
            ),
          ),
        ),
      ),
    );
  }
}
