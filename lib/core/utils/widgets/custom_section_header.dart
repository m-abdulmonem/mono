import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomSectionHeader extends StatelessWidget {
  final String section;
  final VoidCallback? seeAll;
  const CustomSectionHeader({Key? key, required this.section, this.seeAll})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(
          section,
          fontWeight: FontWeight.w400,
          fontSize: 16,
        ),
        CustomText(
          "See all",
          fontWeight: FontWeight.w400,
          onTap: seeAll,
        ),
      ],
    );
  }
}
