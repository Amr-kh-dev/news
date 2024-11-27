import 'package:flutter/material.dart';
import 'package:news/shared/app_theme.dart';

class TabItem extends StatelessWidget {
  TabItem({super.key, required this.SourceName, required this.isSelected});
  String SourceName;
  bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 12),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: isSelected ? AppTheme.primary : Colors.transparent,
            border: Border.all(width: 2, color: AppTheme.primary)),
        child: Text(
          SourceName,
          style: Theme.of(context)
              .textTheme
              .titleSmall
              ?.copyWith(color: isSelected ? AppTheme.wihte : AppTheme.primary),
        ));
  }
}
