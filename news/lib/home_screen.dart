import 'package:flutter/material.dart';
import 'package:news/app_theme.dart';
import 'package:news/category_item.dart';

class HomeScreen extends StatelessWidget {
  static const String routName = '/homeScreen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppTheme.wihte,
        image: DecorationImage(image: AssetImage('news/assets/image/_118109970_livreal.png'),fit: BoxFit.fill),

      ), child:  Scaffold(
        appBar: AppBar(
          title: Text('News App'),
        ),
      body:CategoryItem(
        
      ) ,
      
      ))
      ;
  }
}
