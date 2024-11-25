import 'package:flutter/material.dart';
import 'package:news/app_theme.dart';
import 'package:news/tabs/category/category_detalis.dart';
import 'package:news/tabs/home_screen.dart';

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
        HomeScreen.routName: (_) => HomeScreen(),
        CategoryDetalis.routes: (_) => CategoryDetalis(
              categoryId: '',
            )
      },
      initialRoute: HomeScreen.routName,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
    );
  }
}
