import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/core/utils/widgets/pages/posts_page.dart';

import '/core/utils/widgets/custom_posts.dart';

class CategoryBody extends StatelessWidget {
  const CategoryBody({Key? key}) : super(key: key);

  Widget _buildTabBarView(){
    return const TabBarView(
      children: [
        PostsWidgetView(),
        PostsWidgetView(),
        PostsWidgetView(),
        PostsWidgetView(),
        PostsWidgetView(),
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
     return   SingleChildScrollView(
       child: SizedBox(
         height: Get.height,
         child: _buildTabBarView(),
       ),
     );
  }
}
