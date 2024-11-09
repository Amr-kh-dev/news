import 'package:flutter/material.dart';
import 'package:news/app_theme.dart';
import 'package:news/home_screen.dart';

void main() {
  runApp(newsApp());
}

class newsApp extends StatelessWidget {
  const newsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      debugShowCheckedModeBanner: false,
      title: 'News App',
      routes: {
        HomeScreen.routName:(_)=>HomeScreen()
      },
      initialRoute: HomeScreen.routName,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      
    );
  }
}
