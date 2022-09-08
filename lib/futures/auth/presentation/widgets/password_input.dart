import 'package:flutter/cupertino.dart';
import '/core/utils/custom_widgets.dart';
import '../manger/auth_controller.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(builder: (controller) {
      return CustomInput(
        obscureText: controller.isPassHide,
        label: "password",
        suffixIcon: controller.isPassHide
            ? CupertinoIcons.eye
            : CupertinoIcons.eye_slash,
        onSuffixTap: controller.showPass,
        onSave: (val) => controller.password = val!,
        validator: controller.requiredInput,
      );
    });
  }
}
