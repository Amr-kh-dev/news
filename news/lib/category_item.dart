import 'package:flutter/material.dart';
import 'package:news/app_theme.dart';
import 'package:news/category_model.dart';
import 'package:news/item_card.dart';

class CategoryItem extends StatelessWidget {
  List<CategoryModel> items = [
      CategoryModel(
          color: AppTheme.red,
          name: 'sport',
          index: 0,
          image: 'assets/image/sports.png',
          id: '')
        ,
   CategoryModel(
      
          color: AppTheme.red,
          name: 'sport',
          index: 0,
          image: 'assets/image/sports.png',
          id: '',
    ),
    CategoryModel(
      
          color: AppTheme.red,
          name: 'sport',
          index: 0,
          image: 'assets/image/sports.png',
          id: '',
    ),
    CategoryModel(
      
          color: AppTheme.red,
          name: 'sport',
          index: 0,
          image: 'assets/image/sports.png',
          id: '',
    ),
    CategoryModel(
      
          color: AppTheme.red,
          name: 'sport',
          index: 0,
          image: 'assets/image/sports.png',
          id: '',
    ),
    CategoryModel(
      
          color: AppTheme.red,
          name: 'sport',
          index: 0,
          image: 'assets/image/sports.png',
          id: '',
    ),
  ];

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
