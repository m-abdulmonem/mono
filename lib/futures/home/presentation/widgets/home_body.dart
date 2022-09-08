import 'package:flutter/material.dart';
import 'package:mono/core/utils/widgets/pages/posts_page.dart';
import 'categories_section.dart';
import '/core/utils/custom_widgets.dart';
import '../manager/home_controller.dart';

class HomeBody extends GetWidget<HomeController> {
  const HomeBody({Key? key}) : super(key: key);


  Widget _buildBody(){
    return Column(
      children: const [
        Categories(),
        VerticalSpace(10),
        PostsWidgetView(

        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(
        top: Get.height * .05,
        left: 14,
        right: 14
      ),
      child: _buildBody(),
    );
  }
}

