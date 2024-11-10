import 'package:flutter/material.dart';
import 'package:news/app_theme.dart';

class HomeDrawer extends StatelessWidget {
  void Function(OncategorieSelected) onTap;
  HomeDrawer({required this.onTap});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      width: screenWidth * 0.6,
      child: Column(
        children: [
          Container(
              height: screenHeight * 0.2,
              color: AppTheme.primary,
              alignment: Alignment.center,
              child: Text(
                'News App !',
                style: Theme.of(context).textTheme.titleLarge,
              )),
          Expanded(
            child: Container(
              color: AppTheme.wihte,
              child: Padding(
                padding: const EdgeInsets.only(top: 12, left: 12),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: ()=>onTap(OncategorieSelected.categories),
                      child: Row(
                        children: [
                          Icon(Icons.menu),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            'Categories',
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(color: AppTheme.black),
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: ()=> onTap(OncategorieSelected.settings),
                      child: Row(
                        children: [
                          Icon(Icons.settings),
                          SizedBox(
                            width: 3,
                          ),
                          Text('settings',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(color: AppTheme.black))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

enum OncategorieSelected {
  categories,
  settings,
}
