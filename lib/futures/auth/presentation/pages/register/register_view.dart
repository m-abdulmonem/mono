import 'package:flutter/material.dart';
import 'package:mono/core/utils/custom_widgets.dart';
import 'widgets/register_body.dart';
class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomText(
            "Create New Account",
          fontWeight: FontWeight.w400,
        ),
        leading: GestureDetector(
          onTap: ()=> Get.offNamed("auth"),
          child: const Icon(Icons.arrow_back,color: colorPrimaryText,),
        ),
      ),
      body: const RegisterBody(),
    );
  }
}
