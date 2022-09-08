import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '/futures/category/presentation/manager/category_controller.dart';
import 'category_item.dart';
import '/core/utils/custom_widgets.dart';

class Categories extends GetWidget<CategoryController> {
  const Categories({Key? key}) : super(key: key);

  void _seeAll() {
    if (kDebugMode) {
      print("see all");
    }
  }

  Widget _buildListView() {
    return SizedBox(
        width: Get.width,
        height: 100,
        child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: controller.categories.length,
            itemBuilder: (_, index) =>
                CategoryItem(category: controller.categories[index])));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomSectionHeader(section: "Categories", seeAll: _seeAll),
        const VerticalSpace(15),
        _buildListView(),
      ],
    );
  }
}
