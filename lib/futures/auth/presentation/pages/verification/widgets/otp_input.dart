import 'package:flutter/material.dart';
import '/core/utils/custom_widgets.dart';
import '../manager/verification_controller.dart';

class OtpInput extends StatefulWidget {
  const OtpInput({Key? key}) : super(key: key);

  @override
  State<OtpInput> createState() => _OtpInputState();
}

class _OtpInputState extends State<OtpInput> {
  final VerificationController controller = Get.find();

  void _onInputChange(String value, bool? first, last) {
    if (value.length == 1 && !last) {
      FocusScope.of(context).nextFocus();
    }
    if (value.isEmpty && !first!) {
      FocusScope.of(context).previousFocus();
    }
  }

  InputDecoration _buildInputDecoration() {
    return InputDecoration(
      filled: true,
      fillColor: Colors.white,
      counter: const Offstage(),
      enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 2, color: colorActive),
          borderRadius: BorderRadius.circular(12)),
      focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 2, color: colorActive),
          borderRadius: BorderRadius.circular(12)),
    );
  }

  Widget _buildTextField(
      {bool? first, last, TextEditingController? controllerr}) {
    return TextField(
      controller: controllerr,
      autofocus: true,
      onChanged: (value) => _onInputChange(value, first, last),
      showCursor: false,
      readOnly: false,
      textAlign: TextAlign.center,
      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      keyboardType: TextInputType.number,
      maxLength: 1,
      decoration: _buildInputDecoration(),
    );
  }

  Widget _textFieldOTP(
      {bool? first, last, TextEditingController? controllerr}) {
    return SizedBox(
      height: Get.height / 12,
      child: AspectRatio(
        aspectRatio: .85,
        child:
            _buildTextField(first: first, last: last, controllerr: controllerr),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _textFieldOTP(
              first: true, last: false, controllerr: controller.controller1),
          _textFieldOTP(
              first: false, last: false, controllerr: controller.controller2),
          _textFieldOTP(
              first: false, last: false, controllerr: controller.controller3),
          _textFieldOTP(
              first: false, last: true, controllerr: controller.controller4),
        ],
      ),
    );
  }
}
