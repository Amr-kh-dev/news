import 'package:flutter/material.dart';
import 'package:news/category/view/widget/article_detalis.dart';
import 'package:news/category/view/widget/category_detalis.dart';
import 'package:news/shared/app_theme.dart';
import 'package:news/home/view/screens/home_screen.dart';

void main() {
  runApp(const newsApp());
}

class newsApp extends StatelessWidget {
  const newsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News App',
      routes: {
        HomeScreen.routName: (_) => const HomeScreen(),
        CategoryDetalis.routes: (_) => CategoryDetalis(
              categoryId: '',
            ),
        ArticleDetalis.routeName: (_) => ArticleDetalis(),
      },
      initialRoute: HomeScreen.routName,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
    );
  }
}
