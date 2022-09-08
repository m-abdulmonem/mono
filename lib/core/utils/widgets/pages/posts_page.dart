import 'package:flutter/material.dart';

import '../../custom_widgets.dart';
import '../custom_posts.dart';

class PostsWidgetView extends StatelessWidget {
  const PostsWidgetView({Key? key}) : super(key: key);

  Widget _buildBody() {
    return Column(
      children: const [
        CustomSectionHeader(section: "Offers & packages"),
        VerticalSpace(10),
        CustomPostBlock(),
        VerticalSpace(10),
        CustomSectionHeader(section: "Different Services"),
        VerticalSpace(10),
        CustomPostInline(),
        VerticalSpace(10),
        CustomPostInline(status: "ongoin"),
        VerticalSpace(10),
        CustomPostInline(
          status: "book",
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: Get.height * .05),
      child: _buildBody(),
    );
  }
}
