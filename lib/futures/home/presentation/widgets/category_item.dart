import 'package:flutter/material.dart';
import '../../../category/domain/models/category_model.dart';
import '/core/utils/custom_widgets.dart';

class CategoryItem extends StatelessWidget {
  final CategoryModel category;
  const CategoryItem({Key? key, required this.category}) : super(key: key);

  void _onCategoryTapped() =>
      Get.toNamed("main/category", arguments: {"id": category.id});

  Widget _buildCategory() {
    return Column(
      children: [
        Icon(category.icon, color: colorPrimary, size: 50),
        const VerticalSpace(10),
        CustomText(
          category.name!,
          fontWeight: FontWeight.w400,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14, right: 30),
      child: GestureDetector(
        onTap: _onCategoryTapped,
        child: _buildCategory(),
      ),
    );
  }
}
