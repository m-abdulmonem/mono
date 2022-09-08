import 'package:flutter/material.dart';
import '/core/utils/custom_widgets.dart';

class CustomRadio extends StatelessWidget {
  final String title;
  final Object? value, groupValue;
  final Function(dynamic) onChanged;
  const CustomRadio(
      {Key? key,
      this.value,
      required this.onChanged,
      required this.title,
      this.groupValue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: CustomText(
          title.tr,
          fontWeight: FontWeight.w400,
        ),
        onTap: () => onChanged(value),
        leading: Radio(
          fillColor: MaterialStateColor.resolveWith((states) => colorActive),
          activeColor: colorActive,
          value: value,
          groupValue: groupValue,
          onChanged: onChanged,
        ));
  }
}
