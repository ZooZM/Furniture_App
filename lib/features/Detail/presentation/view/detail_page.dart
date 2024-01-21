import 'package:flutter/material.dart';
import 'package:furniture_app/constant.dart';
import 'package:furniture_app/features/Detail/presentation/view/widget/detail_appbar.dart';
import 'package:furniture_app/features/Detail/presentation/view/widget/detail_item.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            DetailAppBar(),
            DetailItem(),
          ],
        ),
      ),
    );
  }
}
