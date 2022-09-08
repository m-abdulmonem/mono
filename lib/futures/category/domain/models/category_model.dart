import 'package:flutter/cupertino.dart';

class CategoryModel {
  int? id;
  String? name;
  IconData? icon;

  CategoryModel({this.id, this.name, this.icon});

  CategoryModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        icon = json['icon'];

  Map<String, dynamic> toJson() => {'id': id, 'name': name, 'img': icon};
}
