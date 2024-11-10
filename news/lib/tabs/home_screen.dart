import 'package:flutter/material.dart';
import 'package:news/app_theme.dart';
import 'package:news/tabs/category/category_item.dart';
import 'package:news/tabs/drawer/home_drawer.dart';
import 'package:news/tabs/settings.dart';

class HomeScreen extends StatefulWidget {
  static const String routName = '/homeScreen';
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  OncategorieSelected selectedDrawer = OncategorieSelected.categories;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: AppTheme.wihte,
          image: DecorationImage(
              image: AssetImage('news/assets/image/_118109970_livreal.png'),
              fit: BoxFit.fill),
        ),
        child: Scaffold(
          appBar: AppBar(
            title: Text('News App'),
          ),
          drawer: HomeDrawer(
            onTap: onDrawerItemPraesed,
          ),
          body: selectedDrawer == OncategorieSelected.categories
              ? CategoryItem()
              : Settings(),
        ));
  }

  void onDrawerItemPraesed(OncategorieSelected item) {
    selectedDrawer = item;
    setState(() {});
    Navigator.of(context).pop();
  }
}
