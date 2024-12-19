import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:news/source/view/sourses_tab.dart';
import 'package:news/shared/widegt/erro_indecator.dart';
import 'package:news/source/view_model/source_stat.dart';
import 'package:news/source/view_model/source_view_model.dart';

class CategoryDetalis extends StatefulWidget {
  static const String routes = '/categoryDetails';
  String categoryId;
  CategoryDetalis({super.key, required this.categoryId});

  @override
  State<CategoryDetalis> createState() => _CategoryDetalisState();
}

class _CategoryDetalisState extends State<CategoryDetalis> {
  late final SourceViewModel viewModel;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    viewModel = SourceViewModel()..getSources(widget.categoryId);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => viewModel,
        child: BlocBuilder<SourceViewModel, SourceStat>(
          builder: (
            _,
            state,
          ) {
            if (state is sourceLoading) {
              print('testing loading');
              return Center(child: CircularProgressIndicator());
            } else if (state is sourceError) {
              print('testing error');
              return ErroIndecator(state.error);
            } else if (state is sourceSuccess) {
              print('testing success');
              return SourcesTab(state.sources);
            } else {
              print('testing default');
              return const SizedBox();
            }
          },
        ));
  }
}
