import '/core/utils/custom_widgets.dart';
import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final String? hint, label;
  final Color? color, hintColor, labelColor, prefixIconColor, suffixIconColor;
  final bool? obscureText, autofocus;
  final TextStyle? labelStyle, hintStyle, style;
  final TextEditingController? controller;
  final TextInputAction? textInputAction;
  final TextInputType? inputType;
  final void Function(String?)? onSave, onChange;
  final String? Function(String?)? validator;
  final VoidCallback? onSuffixTap;
  final IconData? prefixIcon, suffixIcon;
  final double? radius;
  final InputBorder? inputBorder;
  final EdgeInsetsGeometry? contentPadding;

  final UnderlineInputBorder _inputBorder = const UnderlineInputBorder(
      borderSide: BorderSide(color: Color(0xffF1BC43)),
      borderRadius: BorderRadius.all(Radius.circular(4)));

  final UnderlineInputBorder _errorInputBorder = UnderlineInputBorder(
    borderRadius: BorderRadius.circular(50),
    borderSide: const BorderSide(
      color: colorError,
      width: 2.0,
    ),
  );

  CustomInput(
      {Key? key,
      this.hint,
      this.label,
      this.color,
      this.hintColor,
      this.labelColor = colorGray,
      this.prefixIconColor,
      this.obscureText = false,
      this.autofocus = false,
      this.labelStyle,
      this.hintStyle,
      this.style,
      this.controller,
      this.textInputAction,
      this.inputType,
      this.onSave,
      this.validator,
      this.prefixIcon,
      this.radius,
      this.onChange,
      this.suffixIcon,
      this.onSuffixTap,
      this.inputBorder,
      this.contentPadding,
      this.suffixIconColor})
      : super(key: key);

  Widget _buildSuffix() {
    return GestureDetector(
      onTap: onSuffixTap,
      child: Icon(
        suffixIcon,
        color: suffixIconColor ?? colorOrdinaryText,
      ),
    );
  }

  InputDecoration _buildInputDecoration() {
    return InputDecoration(
        border: inputBorder ?? _inputBorder,
        focusColor: colorPrimaryText,
        enabledBorder: inputBorder ?? _inputBorder,
        focusedBorder: inputBorder ?? _inputBorder,
        errorBorder: _errorInputBorder,
        suffixIcon: _buildSuffix(),
        errorStyle: const TextStyle(color: colorError, fontSize: 15),
        alignLabelWithHint: true,
        labelText: label,
        contentPadding: contentPadding,
        prefixIconColor: prefixIconColor,
        prefixIcon: Icon(prefixIcon),
        filled: CustomWidgets().isDarkMode,
        fillColor:
            CustomWidgets().isDarkMode ? colorDarkSecondary : Colors.white,
        floatingLabelStyle: const TextStyle(color: colorPrimaryText),
        hintText: hint,
        hintStyle: hintStyle ?? TextStyle(color: hintColor));
  }

  Widget _buildTextFormField() {
    return TextFormField(
      controller: controller,
      textInputAction: textInputAction ?? TextInputAction.none,
      keyboardType: inputType ?? TextInputType.text,
      style: style ?? TextStyle(color: colorOrdinaryText),
      obscureText: obscureText!,
      onSaved: onSave,
      onChanged: onChange,
      validator: validator,
      autofocus: autofocus!,
      decoration: _buildInputDecoration(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTextFormField();
  }
}

class CustomSearchInput extends StatelessWidget {
  final Color _color = const Color(0xff878787);

  const CustomSearchInput({Key? key}) : super(key: key);

  OutlineInputBorder get _inputBorder {
    return OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black.withOpacity(.04)),
        borderRadius: const BorderRadius.all(Radius.circular(12)));
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width /1.5,
      child: CustomInput(
        prefixIcon: Icons.search,
        prefixIconColor: _color,
        inputBorder: _inputBorder,
        hint: "search".toCapitalize.tr,
        hintColor: _color,
        contentPadding: EdgeInsets.zero,
        onSuffixTap: () => "",
        suffixIcon: Icons.sort,
        suffixIconColor: _color,
      ),
    );
  }
}
