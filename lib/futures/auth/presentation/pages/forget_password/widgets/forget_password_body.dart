import 'package:flutter/material.dart';
import '/core/utils/custom_widgets.dart';
import '../../../manger/auth_controller.dart';

class ForgetPasswordBody extends GetWidget<AuthController> {
  const ForgetPasswordBody({Key? key}) : super(key: key);

  Widget _buildAuthType() {
    return GetBuilder<AuthController>(builder: (type) {
      return Row(
        children: [
          SizedBox(
            width: Get.width * .4,
            child: CustomRadio(
              value: "email",
              groupValue: type.authType,
              onChanged: type.selectAuthType,
              title: "Email",
            ),
          ),
          SizedBox(
            width: Get.width * .5,
            child: CustomRadio(
              value: "phone",
              groupValue: type.authType,
              onChanged: type.selectAuthType,
              title: "Phone Number",
            ),
          ),
        ],
      );
    });
  }

  String? _validator(String? val) {
    if (controller.authType == "email") {
      return controller.emailValidate(val);
    }
    return controller.phoneValidate(val);
  }

  Widget _buildInput() {
    return GetBuilder<AuthController>(builder: (input){
      return CustomInput(
        label: input.authType.toCapitalize,
        onSave: (val) => input.phone = val!,
        validator: _validator,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding:  EdgeInsets.only(right: 14, left: 14, top: Get.height * .08),
      child: Form(
        key: controller.authForm,
        child: Column(
          children: [
            _buildAuthType(),
            VerticalSpace(Get.height * .1),
            _buildInput(),
            VerticalSpace(Get.height * .1),
            CustomButton(
              text: "Send".tr,
              onTap: controller.forgetPassword,
            )
          ],
        ),
      ),
    );
  }
}
