import 'package:flutter/material.dart';
import 'package:furniture_app/constant.dart';
import 'package:furniture_app/core/utils/Styles.dart';
import 'package:furniture_app/features/Home/presentation/view%20Model/item_Model.dart';
import 'package:furniture_app/features/Home/presentation/view/detail_view.dart';

class PopularItem extends StatelessWidget {
  const PopularItem({
    super.key,
    required this.item,
  });
  final ItemModel item;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context)
          .pushNamed(const DetailPage().id, arguments: item),
      child: SizedBox(
        width: 150,
        child: Column(
          children: [
            Image.asset(
              item.image,
              alignment: Alignment.center,
              height: 150,
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  item.name,
                  style: Styles.textStyle16,
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  item.price.toString(),
                  style: TextStyle(
                    color: korange,
                  ),
                ),
                const Spacer(),
                const Icon(
                  Icons.star_rate,
                  color: Colors.yellow,
                ),
                Text(item.rate.toString()),
              ],
            )
          ],
        ),
      ),
    );
  }
}
