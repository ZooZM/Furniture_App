import 'package:flutter/material.dart';
import 'package:furniture_app/features/Home/data/home_path.dart';
import 'package:furniture_app/features/Home/presentation/view/widget/popular_item.dart';

class PopularListView extends StatelessWidget {
  const PopularListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: poplist.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: PopularItem(
            item: poplist[index],
          ),
        ),
      ),
    );
  }
}
