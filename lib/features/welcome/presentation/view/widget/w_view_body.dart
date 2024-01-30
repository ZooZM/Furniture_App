import 'package:flutter/material.dart';
import 'package:furniture_app/core/utils/Styles.dart';
import 'package:furniture_app/features/Home/presentation/view/home_view.dart';
import 'package:furniture_app/features/welcome/data/constant/constant.dart';
import 'package:furniture_app/features/welcome/presentation/view/widget/w_icon.dart';

class WViewBody extends StatelessWidget {
  const WViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () => Navigator.of(context)
                    .pushReplacementNamed(const HomeView().id),
                child: Text(
                  'Skip',
                  style: Styles.textStyle18.copyWith(color: Colors.black),
                ),
              )
            ],
          ),
          Expanded(
            child: PageView.builder(
              itemCount: onboardingPagedList.length,
              itemBuilder: (context, index) => onboardingPagedList[index],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const WIcon()
        ],
      ),
    );
  }
}
