import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '/core/utils/custom_widgets.dart';
import 'on_boarding_actions.dart';

class OnBoardingItem<T> extends StatelessWidget {
  final String? image, title, subTitle;
  const OnBoardingItem(
      {Key? key,
      @required this.image,
      @required this.title,
      @required this.subTitle})
      : super(key: key);

  Widget _buildBodyContent() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: Get.width * 0.5, child: SvgPicture.asset(image!)),
        VerticalSpace(Get.width * 0.13),
        CustomText(
          title!,
          color: colorPrimaryText,
          fontSize: 22,
          fontWeight: FontWeight.w400,
        ),
        VerticalSpace(Get.width * 0.04),
        CustomText(
          subTitle!,
          textAlign: TextAlign.center,
          fontWeight: FontWeight.w400,
          fontSize: 15,

          color: colorOrdinaryText,
        ),
        const OnBoardingActions()
      ],
    );
  }

  Widget _buildContainer() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Get.width * 0.15),
      child: _buildBodyContent(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildContainer();
  }
}
