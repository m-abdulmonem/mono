import '../../../widgets/additional_auth_methods.dart';
import '../../../widgets/password_input.dart';
import '/core/utils/custom_widgets.dart';
import '../../../manger/auth_controller.dart';
import 'package:flutter/cupertino.dart';

class RegisterBody extends GetWidget<AuthController> {
  const RegisterBody({Key? key}) : super(key: key);

  Widget _buildForm() {
    return Form(
      key: controller.authForm,
      child: Column(
        children: [
          SizedBox(
            width: Get.width,
            child: CustomText(
              "Welcome".tr,
              color: colorPrimary,
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
          VerticalSpace(Get.height * .03),
          CustomInput(
            label: "Phone Number".tr,
            suffixIcon: CupertinoIcons.phone,
            onSave: (val) => controller.phone = val!,
            validator: controller.requiredInput,
          ),
          VerticalSpace(Get.height * .02),
          const PasswordInput(),
          VerticalSpace(Get.height * .1),
          CustomButton(
            text: "Sign up".tr,
            onTap: controller.signIn,
          ),
          const AdditionalAuthMethods(
            isRegisterPage: true,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(right: 14, left: 14, top: Get.height * .08),
      child: _buildForm(),
    );
  }
}
