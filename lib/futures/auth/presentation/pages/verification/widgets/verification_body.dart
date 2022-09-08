import 'package:flutter/material.dart';
import 'package:mono/core/utils/custom_widgets.dart';
import '../manager/verification_controller.dart';
import 'otp_input.dart';

class VerificationBody extends GetWidget<VerificationController> {
  const VerificationBody({Key? key}) : super(key: key);

  String formatTime(int seconds) {
    return '${(Duration(seconds: seconds))}'.split('.')[0].padLeft(8, '0')
        .replaceFirst("0", "")
        .replaceFirst("0", "")
        .replaceFirst(":", "")
        .replaceFirst("0", "");
  }

  Widget _buildCounter() {
    return GetBuilder<VerificationController>(builder: (counter) {
      return Row(
        children: [
          const CustomText(
            "Resend ",
            fontWeight: FontWeight.w400,
          ),
          CustomText(
            "${formatTime(counter.start)} min",
            color: colorPrimary,
            fontWeight: FontWeight.w400,
          )
        ],
      );
    });
  }

  Widget _buildBody() {
    return Column(
      children: [
        CustomText(
          "Lorem Ipsum is simply dummy text of the printing",
          fontSize: 20,
          color: colorOrdinaryText,
          textAlign: TextAlign.center,
          fontWeight: FontWeight.w400,
        ),
        VerticalSpace(Get.width * .08),
        const OtpInput(),
        VerticalSpace(Get.width * .08),
        _buildCounter(),
        VerticalSpace(Get.width * .08),
        CustomButton(
          text: "Confirm".tr,
          onTap: () => "",
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(right: 14, left: 14, top: Get.height * .08),
      child: _buildBody(),
    );
  }
}
