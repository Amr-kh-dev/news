import 'package:flutter/material.dart';
import 'package:news/app_theme.dart';
import 'package:news/models/category_model.dart';
import 'package:news/tabs/category/category_detalis.dart';
import 'package:news/tabs/category/category_item.dart';
import 'package:news/tabs/drawer/home_drawer.dart';
import 'package:news/tabs/settings.dart';

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
              image: AssetImage('news/assets/image/_118109970_livreal.png'),
              fit: BoxFit.fill),
        ),
        child: Scaffold(
          appBar: AppBar(
            title: Text( selectedCatogry!=null?selectedCatogry!.name:selectedDrawer==OncategorieSelected.categories? 'News App':'setting'),
          ),
          drawer: HomeDrawer(
            onTap: onDrawerItemPraesed,
          ),
          body:selectedCatogry!=null? CategoryDetalis(categoryId: selectedCatogry!.id) : selectedDrawer == OncategorieSelected.categories
              ? CategoryItem(oncategorieSelected:onCategorieSelected ,)
              : const Settings(),
        ));
  }

  void onDrawerItemPraesed(OncategorieSelected item) {
    selectedDrawer = item;
    selectedCatogry=null;
    setState(() {});
    Navigator.of(context).pop();
  }
  void onCategorieSelected(CategoryModel category){
selectedCatogry=category;
setState(() {
  
});
  }
}
