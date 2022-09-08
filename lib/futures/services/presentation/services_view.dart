import 'package:flutter/material.dart';
import '/core/utils/custom_widgets.dart';
import 'widgets/services_body.dart';

class ServicesView extends StatelessWidget {
  const ServicesView({Key? key}) : super(key: key);

  PreferredSizeWidget? _buildAppBar() {
    return CustomAppBar(
      title: "my services",
      actionIcon: Icons.shopping_bag_outlined,
      actionColor: colorPrimary,
    );
  }

  Widget _buildFloatingButton() {
    return const Padding(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: CustomButton(
          text: "+ add a new service ",
        ));
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        appBar: _buildAppBar(),
        body: const ServicesBody(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: _buildFloatingButton(),
      ),
    );
  }
}
