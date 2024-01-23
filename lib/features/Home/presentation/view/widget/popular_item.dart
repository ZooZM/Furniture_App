import 'package:flutter/material.dart';
import 'package:furniture_app/constant.dart';
import 'package:furniture_app/core/utils/Styles.dart';

class PopularItem extends StatelessWidget {
  const PopularItem(
      {super.key,
      required this.image,
      required this.name,
      required this.price,
      required this.rate});
  final String image;
  final String name;
  final double price;
  final double rate;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: Column(
        children: [
          Image.asset(
            image,
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
                name,
                style: Styles.textStyle16,
              ),
            ],
          ),
          Row(
            children: [
              Text(
                price.toString(),
                style: TextStyle(
                  color: korange,
                ),
              ),
              const Spacer(),
              const Icon(
                Icons.star_rate,
                color: Colors.yellow,
              ),
              Text(rate.toString()),
            ],
          )
        ],
      ),
    );
  }
}
