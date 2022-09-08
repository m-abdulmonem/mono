import 'package:flutter/material.dart';
import '/core/utils/custom_widgets.dart';


class ProfileListItem extends StatelessWidget {
  final String name;
  final IconData icon;
  final VoidCallback? onTap;
  const ProfileListItem({Key? key, required this.name, required this.icon, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      title: CustomText(
        name,
        fontWeight: FontWeight.w400,
        fontSize: 18,
      ),
      leading: Icon(
        icon,
        color: colorPrimaryText,
      ),
    );
  }
}
