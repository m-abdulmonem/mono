import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'profile_list_item.dart';
import '/core/utils/custom_widgets.dart';

class ProfileBody extends StatelessWidget {
  final double radius = 25;
  const ProfileBody({Key? key}) : super(key: key);

  Widget _buildDivider() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Divider(),
    );
  }

  Widget _buildHeader() {
    return Container(
      height: Get.height * .17,
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(radius),
              bottomRight: Radius.circular(radius))),
    );
  }

  Widget _buildImage() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          border: Border.all(color: colorActive, width: 2),
          borderRadius: BorderRadius.circular(50),
          image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/profile.jpg"))),
    );
  }

  Widget _buildProfileHeader() {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        _buildHeader(),
        Positioned(
            bottom: -40,
            right: 0,
            left: 0,
            child: Center(
              child: _buildImage(),
            ))
      ],
    );
  }

  Widget _buildBody() {
    return Column(
      children: [
        _buildProfileHeader(),
        VerticalSpace(Get.height * .07),
        const ProfileListItem(name: "wallet", icon: FontAwesomeIcons.wallet),
        const ProfileListItem(name: "address", icon: CupertinoIcons.heart),
        const ProfileListItem(name: "favorites", icon: FontAwesomeIcons.share),
        const ProfileListItem(
            name: "share code", icon: FontAwesomeIcons.wallet),
        _buildDivider(),
        const ProfileListItem(
            name: "about mono", icon: FontAwesomeIcons.addressBook),
        const ProfileListItem(name: "contact us", icon: Icons.phone),
        const ProfileListItem(name: "sittings", icon: Icons.settings),
        const ProfileListItem(name: "sign out", icon: FontAwesomeIcons.signOut),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: _buildBody(),
    );
  }
}
