import 'package:flutter/material.dart';
import 'package:furniture_app/core/utils/Styles.dart';
import 'package:furniture_app/features/Home/presentation/view%20Model/item_Model.dart';
import 'package:furniture_app/features/Home/presentation/view/widget/color_list.dart';
import 'package:furniture_app/features/Home/presentation/view/widget/detail_appbar.dart';
import 'package:furniture_app/features/Home/presentation/view/widget/detail_item.dart';
import 'package:furniture_app/features/Home/presentation/view/widget/detail_text.dart';
import 'package:furniture_app/features/Home/presentation/view/widget/pay_card.dart';

class DetailViewBody extends StatelessWidget {
  const DetailViewBody({super.key, required this.item});
  final ItemModel item;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DetailAppBar(
            name: item.name,
          ),
          const SizedBox(
            height: 16,
          ),
          DetailItem(
            image: item.image,
          ),
          const SizedBox(
            height: 12,
          ),
          DetailText(name: item.name, subtitle: item.subtitle),
          const SizedBox(
            height: 8,
          ),
          const Row(
            children: [
              Text(
                'Color',
                style: Styles.textStyle26,
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16, top: 12),
            child: ColorsList(),
          ),
          const Spacer(
            flex: 1,
          ),
          PayCard(
            price: item.price.toString(),
          ),
          const Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}
