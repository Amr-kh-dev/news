import 'package:flutter/material.dart';
import 'package:news/shared/app_theme.dart';
import 'package:news/category/view/widget/item_card.dart';
import 'package:news/category/data/models/category_model.dart';

class CategoryItem extends StatelessWidget {
  List<CategoryModel> items = [
    CategoryModel(
        color: AppTheme.red,
        name: 'sport',
        image: 'assets/image/sports.png',
        id: 'sports'),
    CategoryModel(
      color: AppTheme.blue,
      name: 'Politics',
      image: 'assets/image/Politics.png',
      id: 'entertainment',
    ),
    CategoryModel(
      color: AppTheme.pink,
      name: 'Health',
      image: 'assets/image/health.png',
      id: 'health',
    ),
    CategoryModel(
      color: AppTheme.bage,
      name: 'business ',
      image: 'assets/image/business.png',
      id: 'business',
    ),
    CategoryModel(
      color: AppTheme.bebeblue,
      name: 'Enviroment',
      image: 'assets/image/enviroment.png',
      id: 'entertainment',
    ),
    CategoryModel(
      color: AppTheme.yello,
      name: 'Science',
      image: 'assets/image/science.png',
      id: 'science',
    ),
  ];

  void Function(CategoryModel) onSelcetedCategory;

  CategoryItem({super.key, required this.onSelcetedCategory});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Pick your category of interest',
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: AppTheme.black)),
        const SizedBox(
          height: 12,
        ),
        Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 10, childAspectRatio: 1.0),
            itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  onSelcetedCategory(items[index]);
                },
                child: ItemCard(model: items[index], index: index)),
            itemCount: items.length,
          ),
        )
      ],
    );
  }
}
