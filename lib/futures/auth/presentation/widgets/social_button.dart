import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '/core/utils/util/constants/colors.dart';

class SocialButton extends StatelessWidget {
  final String imgName;
  final VoidCallback onTap;
  const SocialButton({Key? key, required this.imgName, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            border: Border.all(color: colorActive)),
        child: SvgPicture.asset("assets/images/$imgName.svg", width: 35),
      ),
    );
  }
}
