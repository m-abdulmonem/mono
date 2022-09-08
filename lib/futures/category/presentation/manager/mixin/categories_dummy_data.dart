import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../domain/models/category_model.dart';

mixin Categories {
  List<CategoryModel> categories = [
    CategoryModel(id: 1, name: "Gardens", icon: FontAwesomeIcons.leaf),
    CategoryModel(id: 2, name: "Electricity", icon: FontAwesomeIcons.leaf),
    CategoryModel(id: 3, name: "Cleaning", icon: FontAwesomeIcons.leaf),
    CategoryModel(id: 4, name: "plumes", icon: FontAwesomeIcons.leaf),
    CategoryModel(id: 5, name: "Gardens", icon: FontAwesomeIcons.leaf),
    CategoryModel(id: 6, name: "Gardens", icon: FontAwesomeIcons.leaf),
  ];
}
