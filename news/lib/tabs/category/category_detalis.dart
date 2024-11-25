import 'package:flutter/material.dart';
import 'package:news/models/source.dart';
import 'package:news/tabs/sourses_tab.dart';

class CategoryDetalis extends StatelessWidget {
  static const String routes = '/categoryDetails';
  String categoryId;
  CategoryDetalis({super.key, required this.categoryId});
  List<Source> sources = List.generate(
      10, (index) => Source(id: index.toString(), name: 'souce$index'));

  @override
  Widget build(BuildContext context) {
    return SourcesTab(
      sources: sources,
    );
  }
}
