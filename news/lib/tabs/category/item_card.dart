import 'package:flutter/material.dart';
import 'package:news/models/category_model.dart';

class ItemCard extends StatelessWidget {
  CategoryModel model;
  int index;
  ItemCard({super.key, required this.model,required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
          color: model.color,
          borderRadius: 
               BorderRadius.only(
                  topLeft: const Radius.circular(25),
                  topRight: const Radius.circular(25),
                  bottomLeft: Radius.circular(index.isEven? 25:0),
                  bottomRight: Radius.circular(index.isOdd? 25:0),
                )),
            
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(model.image),
          Text(
           model.name,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ],
      ),
    );
  }
}
