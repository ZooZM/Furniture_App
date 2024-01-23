import 'package:flutter/material.dart';
import 'package:furniture_app/features/Home/presentation/view%20Model/item_Model.dart';
import 'package:furniture_app/features/Home/presentation/view/widget/detailv_view_body.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});
  final String id = 'DetailPage';
  @override
  Widget build(BuildContext context) {
    final ItemModel item =
        ModalRoute.of(context)!.settings.arguments as ItemModel;
    return Scaffold(
      body: SafeArea(
        child: DetailViewBody(
          item: item,
        ),
      ),
    );
  }
}
