import 'package:flutter/material.dart';

class ErroIndecator extends StatelessWidget {
  const ErroIndecator(this.errorMassage, {super.key});
  final String? errorMassage;

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('somthing went wrong'),
    );
  }
}
