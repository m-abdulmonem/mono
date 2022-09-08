import '../../../widgets/additional_auth_methods.dart';
import '../../../widgets/password_input.dart';
import '/core/utils/custom_widgets.dart';
import '../../../manger/auth_controller.dart';
import 'package:flutter/cupertino.dart';

class LoginBody extends GetWidget<AuthController> {
  const LoginBody({Key? key}) : super(key: key);

  Widget _buildForm() {
    return Form(
      key: controller.authForm,
      child: Column(
        children: [
          const CustomText(
            "Sign in",
            color: colorPrimaryText,
            fontWeight: FontWeight.w400,
            fontSize: 22,
          ),
          VerticalSpace(Get.height * .1),
          SizedBox(
            width: Get.width,
            child: const CustomText(
              "Welcome Back",
              color: colorPrimary,
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
          VerticalSpace(Get.height * .03),
          CustomInput(
            label: "Phone",
            suffixIcon: CupertinoIcons.phone,
            onSave: (val) => controller.phone = val!,
            validator: controller.requiredInput,
          ),
          VerticalSpace(Get.height * .02),
          const PasswordInput(),
          VerticalSpace(Get.height * .03),
          CustomText(
            "Forget Password ?",
            onTap: () => Get.offNamed("auth/password/forget"),
            textAlign: TextAlign.right,
            width: Get.width,
            fontWeight: FontWeight.w300,
            fontSize: 16,
          ),
          VerticalSpace(Get.height * .03),
          CustomButton(
            text: "Sign In",
            onTap: controller.signIn,
          ),
          const AdditionalAuthMethods()
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
