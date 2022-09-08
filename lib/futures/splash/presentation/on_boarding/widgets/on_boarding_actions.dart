import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import '../manger/boarding_controller.dart';
import '/core/utils/custom_widgets.dart';

class OnBoardingActions extends GetWidget<BoardingController> {
  const OnBoardingActions({Key? key}) : super(key: key);

  Widget _buildDotsIndicator() {
    return GetBuilder<BoardingController>(builder: (dotsController) {
      return DotsIndicator(
        onTap: dotsController.onDotsTapped,
        dotsCount: dotsController.items.length,
        position: dotsController.pageIndex,
        decorator: const DotsDecorator(
          color: colorOnBoardingPageIndex,
          activeColor: colorActive,
        ),
      );
    });
  }

  Widget _buildButton() =>
      CustomButton(text: "Continue".tr, onTap: controller.onTap);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VerticalSpace(Get.height * 0.06),
        _buildDotsIndicator(),
        VerticalSpace(Get.height * 0.06),
        _buildButton(),
      ],
    );
  }
}
