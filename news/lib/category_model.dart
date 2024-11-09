import 'dart:ui';

class CategoryModel {
  int index;
  String image;
  Color color;
  String name;
  String id;
  CategoryModel(
      {required this.color,
      required this.name,
      required this.id,
      required this.index,
      required this.image});
}
