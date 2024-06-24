import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mmvp_isllamic/commons/common_imports/common_libs.dart';
import 'package:mmvp_isllamic/modules/onboard/pages/onboard_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../controller/onboard_controller.dart';

class OnboardView extends StatelessWidget {
  const OnboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardController>(
      init: OnboardController(),
      builder: (controller) {
        return const Scaffold(
          body: OnboardViewBody(),
        );
      },
    );
  }
}

class OnboardViewBody extends StatelessWidget {
  const OnboardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardController>(
      builder: (controller) {
        return Stack(
          children: [
            PageView(
              controller: controller.pageController,
              onPageChanged: (index) {
                bool onlastpage = index == 2;
                controller.setonlastpage(onlastpage);
              },
              children: const [
                OnboardPage(
                  image: 'images/onb.png',
                  title: 'Enhance Reading  \nExperiwnce',
                  description:
                      'Helight and  draw and even \npotrairte touch to their pdfs',
                  subtitle: 'View & Edit pdf',
                ),
                OnboardPage(
                  image: 'images/onb.png',
                  title: 'Enhance Reading  \nExperiwnce',
                  description:
                      'Helight and  draw and even \npotrairte touch to their pdfs',
                  subtitle: 'View & Edit pdf',
                ),
                OnboardPage(
                  image: 'images/onb.png',
                  title: 'Enhance Reading  \nExperiwnce',
                  description:
                      'Helight and  draw and even \npotrairte touch to their pdfs',
                  subtitle: 'View & Edit pdf',
                ),
              ],
            ),
            Positioned(
              bottom: 20.0,
              left: 20.0,
              right: 20.0,
              child: Column(
                children: [
                  SmoothPageIndicator(
                    controller: controller.pageController,
                    count: 3,
                    effect: const WormEffect(
                      dotColor: Colors.grey,
                      activeDotColor: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  controller.onlastpage
                      ? ElevatedButton(
                          onPressed: () {
                            // Navigate to the next screen
                          },
                          child: const Text('Get Started'),
                        )
                      : Container(),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
