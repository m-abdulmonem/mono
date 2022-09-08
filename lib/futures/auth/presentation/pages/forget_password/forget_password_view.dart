import 'package:flutter/material.dart';
import '/core/utils/custom_widgets.dart';
import 'widgets/forget_password_body.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: CustomText(
          "forgot password".tr,
          fontWeight: FontWeight.w400,
        ),
        leading: GestureDetector(
          onTap: ()=> Get.offNamed("auth"),
          child: const Icon(Icons.arrow_back,color: colorPrimaryText,),
        ),
      ),
      body: const ForgetPasswordBody(),
    );
  }
}
