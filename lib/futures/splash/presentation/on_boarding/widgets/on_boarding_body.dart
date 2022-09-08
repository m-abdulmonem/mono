import '../manger/boarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingBody extends GetWidget<BoardingController> {
  const OnBoardingBody({super.key});

  Widget _buildPage() {
    return PageView(
      onPageChanged: controller.onPageChanged,
      physics: const AlwaysScrollableScrollPhysics(),
      controller: controller.pageController,
      children: controller.items,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Center(
            child: SizedBox(
              height: Get.height,
              child: _buildPage(),
            ),
          )
        ],
      ),
    );
  }
}
