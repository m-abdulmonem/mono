import 'package:flutter/material.dart';
import '/core/utils/custom_widgets.dart';
import 'widgets/category_body.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({Key? key}) : super(key: key);

  List<Widget> _buildTabs(){
    return [
      CustomTab(text: "Design of children's rooms".tr,),
      CustomTab(text: "Design of children's rooms".tr,),
      CustomTab(text: "Living room design".tr,),
      CustomTab(text: "Living room design".tr,),
      CustomTab(text: "Living room design".tr,),
    ];
  }
  PreferredSizeWidget? _buildAppBar(){
    return CustomAppBar(
      title: "Interior design",
      isScrollable: true,
      isCategoryPage: true,
      indicatorWeight: 5,
      tabs: _buildTabs(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: _buildAppBar(),
        body: const CategoryBody(),
      ),
    );
  }
}
