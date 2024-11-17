import 'package:flutter/material.dart';
import 'package:news/app_theme.dart';
import 'package:news/models/category_model.dart';
import 'package:news/tabs/category/item_card.dart';

class CategoryItem extends StatelessWidget {
  List<CategoryModel> items = [
      CategoryModel(
          color: AppTheme.red,
          name: 'sport',
    
          image: 'assets/image/sports.png',
          id: '')
        ,
   CategoryModel(
      
          color: AppTheme.red,
          name: 'sport',
      
          image: 'assets/image/sports.png',
          id: '',
    ),
    CategoryModel(
      
          color: AppTheme.red,
          name: 'sport',
    
          image: 'assets/image/sports.png',
          id: '',
    ),
    CategoryModel(
      
          color: AppTheme.red,
          name: 'sport',
   
          image: 'assets/image/sports.png',
          id: '',
    ),
    CategoryModel(
      
          color: AppTheme.red,
          name: 'sport',
        
          image: 'assets/image/sports.png',
          id: '',
    ),
    CategoryModel(
      
          color: AppTheme.red,
          name: 'sport',
         
          image: 'assets/image/sports.png',
          id: '',
    ),
  ];

  CategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Pick your category of interest',
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: AppTheme.black)),
        SizedBox(
          height: 12,
        ),
        Expanded(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 10, childAspectRatio: 1.0),
            itemBuilder: (context, index) => ItemCard(model: items[index], index: index),
            itemCount: items.length,
          ),
        )
      ],
    );
  }
}
