import 'package:flutter/material.dart';
import 'package:news/category/view/widget/category_detalis.dart';
import 'package:news/category/view/widget/category_item.dart';
import 'package:news/shared/app_theme.dart';
import 'package:news/home/view/widgets/home_drawer.dart';
import 'package:news/category/data/models/category_model.dart';

import 'package:news/settings/view/widgets/settings.dart';

class HomeScreen extends StatefulWidget {
  static const String routName = '/homeScreen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  OncategorieSelected selectedDrawer = OncategorieSelected.categories;
  CategoryModel? selectedCatogry;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          color: AppTheme.wihte,
          image: DecorationImage(
              image: AssetImage('assets/image/pattern.png'), fit: BoxFit.fill),
        ),
        child: Scaffold(
          appBar: AppBar(
            title: const Text('News App'),
          ),
          drawer: HomeDrawer(
            onTap: onDrawerItemPraesed,
          ),
          body: selectedCatogry != null
              ? CategoryDetalis(categoryId: selectedCatogry!.id)
              : selectedDrawer == OncategorieSelected.categories
                  ? CategoryItem(
                      onSelcetedCategory: onSelcetedCategory,
                    )
                  : const Settings(),
        ));
  }

  void onDrawerItemPraesed(OncategorieSelected item) {
    selectedDrawer = item;
    selectedCatogry = null;
    setState(() {});
    Navigator.of(context).pop();
  }

  void onSelcetedCategory(CategoryModel category) {
    selectedCatogry = category;
    setState(() {});
  }
}
