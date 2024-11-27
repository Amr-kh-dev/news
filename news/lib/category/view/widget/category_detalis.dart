import 'package:flutter/material.dart';
import 'package:news/api/api_servies.dart';
import 'package:news/source/view/sourses_tab.dart';
import 'package:news/shared/widegt/erro_indecator.dart';
import 'package:news/source/view_model/source_view_model.dart';
import 'package:provider/provider.dart';

class CategoryDetalis extends StatefulWidget {
  static const String routes = '/categoryDetails';
  String categoryId;
  CategoryDetalis({super.key, required this.categoryId});

  @override
  State<CategoryDetalis> createState() => _CategoryDetalisState();
}

class _CategoryDetalisState extends State<CategoryDetalis> {
  final viewModel = SourceViewModel();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    viewModel.getSources(widget.categoryId);
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => viewModel,
        child: Consumer<SourceViewModel>(
          builder: (_, viewModel, __) {
            if (viewModel.isLoading) {
              print('testing loading');
              return Center(child: CircularProgressIndicator());
            } else if (viewModel.errorMessage != null) {
              print('testing error');
              return ErroIndecator(viewModel.errorMessage!);
            } else {
              print('testing success');
              return SourcesTab(viewModel.sources);
            }
          },
        ));
  }
}
