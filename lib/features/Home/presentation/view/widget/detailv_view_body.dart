import 'package:flutter/material.dart';
import 'package:furniture_app/core/utils/Styles.dart';
import 'package:furniture_app/features/Home/presentation/view/widget/color_list.dart';
import 'package:furniture_app/features/Home/presentation/view/widget/detail_appbar.dart';
import 'package:furniture_app/features/Home/presentation/view/widget/detail_item.dart';
import 'package:furniture_app/features/Home/presentation/view/widget/detail_text.dart';
import 'package:furniture_app/features/Home/presentation/view/widget/pay_card.dart';

class DetailViewBody extends StatelessWidget {
  const DetailViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 6, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DetailAppBar(),
          SizedBox(
            height: 16,
          ),
          DetailItem(),
          SizedBox(
            height: 12,
          ),
          DetailText(),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Text(
                'Color',
                style: Styles.textStyle26,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, top: 12),
            child: ColorsList(),
          ),
          Spacer(
            flex: 1,
          ),
          PayCard(),
          Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}
