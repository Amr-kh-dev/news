import 'package:flutter/material.dart';
import 'package:news/api/api_servies.dart';
import 'package:news/tabs/sourses_tab.dart';
import 'package:news/widegt/erro_indecator.dart';

class CategoryDetalis extends StatelessWidget {
  static const String routes = '/categoryDetails';
  String categoryId;
  CategoryDetalis({super.key, required this.categoryId});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: ApiServies.getSources(categoryId),
      builder: (_, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError || snapshot.data!.status != 'ok') {
          return const ErroIndecator();
        } else {
          final s = snapshot.data?.sources ?? [];
          return SourcesTab(s);
        }
      },
    );
  }
}
