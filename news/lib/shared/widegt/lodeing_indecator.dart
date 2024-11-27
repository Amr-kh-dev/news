import 'package:flutter/material.dart';
import 'package:news/shared/app_theme.dart';

class LodeingIndecator extends StatelessWidget {
  const LodeingIndecator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: AppTheme.primary,
      ),
    );
  }
}
