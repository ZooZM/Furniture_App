import 'package:flutter/material.dart';
import 'package:furniture_app/constant.dart';

class HomeTextField extends StatelessWidget {
  const HomeTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            child: const TextField(
              decoration: InputDecoration(
                hintText: 'Search Furniture',
                icon: Icon(Icons.search_outlined),
              ),
            ),
          ),
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: korange,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
            child: Icon(
              Icons.tune_rounded,
              color: kwhite,
            ),
          )
        ],
      ),
    );
  }
}
