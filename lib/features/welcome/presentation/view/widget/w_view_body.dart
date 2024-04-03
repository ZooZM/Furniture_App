import 'package:flutter/material.dart';
import 'package:furniture_app/core/utils/Styles.dart';
import 'package:furniture_app/features/Home/presentation/view/home_view.dart';
import 'package:furniture_app/features/welcome/data/constant/constant.dart';
import 'package:furniture_app/features/welcome/presentation/view/widget/w_icon.dart';

class WViewBody extends StatefulWidget {
  const WViewBody({super.key});

  @override
  State<WViewBody> createState() => _WViewBodyState();
}

class _WViewBodyState extends State<WViewBody> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
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
              controller: _controller,
              itemCount: onboardingPagedList.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    AspectRatio(
                      aspectRatio: 1.16,
                      child: Image.asset(onboardingPagedList[index].image),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 12,
                      ),
                      child: Text(
                        onboardingPagedList[index].title,
                        style: Styles.textStyle30,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ...List.generate(
                          onboardingPagedList.length,
                          (index) => AnimatedContainer(
                            margin: const EdgeInsets.only(right: 5),
                            duration: const Duration(
                              milliseconds: 600,
                            ),
                            width: currentIndex == index ? 15 : 6,
                            height: 6,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 26),
                      child: Text(
                        onboardingPagedList[index].subtitle,
                        style: Styles.textStyle16.copyWith(color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          WIcon(
            onTap: () {
              if (currentIndex == onboardingPagedList.length - 1) {
                Navigator.of(context).pushReplacementNamed(const HomeView().id);
              }
              _controller.nextPage(
                duration: const Duration(milliseconds: 400),
                curve: Curves.ease,
              );
            },
            text: currentIndex == onboardingPagedList.length - 1
                ? "Get Started"
                : "Next",
          ),
        ],
      ),
    );
  }
}
