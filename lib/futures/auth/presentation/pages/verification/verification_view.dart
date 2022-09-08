import 'package:flutter/material.dart';
import '/core/utils/custom_widgets.dart';
import 'widgets/verification_body.dart';

class VerificationView extends StatelessWidget {
  const VerificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          "verification".tr,
          fontWeight: FontWeight.w400,
        ),
      ),
      body: const VerificationBody(),
    );
  }
}
