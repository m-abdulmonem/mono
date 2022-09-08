import 'package:flutter/material.dart';
import '../manger/auth_controller.dart';
import 'social_button.dart';
import '/core/utils/custom_widgets.dart';

class AdditionalAuthMethods extends GetWidget<AuthController> {
  final bool isRegisterPage;
  const AdditionalAuthMethods({Key? key, this.isRegisterPage = false})
      : super(key: key);

  Widget _buildSocialMediaButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialButton(imgName: "google", onTap: () => ""),
        const HorizontalSpace(15),
        SocialButton(imgName: "facebook", onTap: () => ""),
      ],
    );
  }

  Widget _buildSignUpText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomText(
          "I have ${!isRegisterPage ? "no " : ""}account".tr,
          fontWeight: FontWeight.w400,
        ),
        const HorizontalSpace(3),
        CustomText(
          isRegisterPage ? "Sign in" : "create new account".tr,
          color: colorPrimary,
          fontWeight: FontWeight.w400,
          onTap: () =>
              isRegisterPage ? Get.back() : Get.offNamed("auth/register"),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VerticalSpace(Get.height * .05),
        const CustomText(
          "Or by social media",
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        VerticalSpace(Get.height * .03),
        _buildSocialMediaButtons(),
        VerticalSpace(Get.height * .03),
        _buildSignUpText(),
        VerticalSpace(Get.height * .03),
        CustomButton(
          text: "Enter as a guest ",
          onTap: () => controller.signInAnon(),
          isOutLine: true,
        )
      ],
    );
  }
}
