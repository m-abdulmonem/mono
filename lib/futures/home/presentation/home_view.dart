import 'package:flutter/material.dart';
import '/core/utils/custom_widgets.dart';
import 'manager/home_controller.dart';
import 'widgets/home_body.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: const Padding(
        padding: EdgeInsets.symmetric(vertical: 12),
        child: CustomSearchInput(),
      ),
      centerTitle: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: const HomeBody(),
    );
  }
}
