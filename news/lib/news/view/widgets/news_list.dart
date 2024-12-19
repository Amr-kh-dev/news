import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:news/news/view/widgets/news_item.dart';
import 'package:news/news/view_model/news_stat.dart';
import 'package:news/news/view_model/news_view_model.dart';
import 'package:news/shared/widegt/erro_indecator.dart';
import 'package:news/shared/widegt/lodeing_indecator.dart';
import 'package:provider/provider.dart';

class NewsList extends StatefulWidget {
  const NewsList(this.sourceId, {super.key});
  final String sourceId;

  @override
  State<NewsList> createState() => _NewsListState();
}

class _NewsListState extends State<NewsList> {
  final viewModel = NewsViewModel();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    viewModel.getNews(widget.sourceId);
  }

  @override
  Widget build(BuildContext context) {
    viewModel.getNews(widget.sourceId);
    return BlocProvider(
        create: (_) => viewModel,
        child: BlocBuilder<NewsViewModel, NewsStat>(builder: (
          _,
          state,
        ) {
          if (state is NewsLoading) {
            print('loding');
            return const LodeingIndecator();
          } else if (state is NewsError) {
            print('error message');
            return ErroIndecator(state.error);
          } else if (state is NewsSuccess) {
            print('error message');
            final newsList = state.news;
            if (newsList.isEmpty) {
              return const Text('No news found');
            } else {
              return ListView.builder(
                itemBuilder: (_, index) => NewsItem(newsList[index]),
                itemCount: newsList.length,
              );
            }
          } else {
            return const Text('Loading...');
          }
        }));
    // FutureBuilder(
    //   future: ApiServies.getNews(sourceId),
    //   builder: (context, snapshot) {
    //     if (snapshot.connectionState == ConnectionState.waiting) {
    //       return const LodeingIndecator();
    //     } else if (snapshot.hasError || snapshot.data?.status != 'ok') {
    //       return const ErroIndecator();
    //     } else {
    //       final newsList = snapshot.data?.articles ?? [];
    //       return ListView.builder(
    //         itemBuilder: (_, index) => NewsItem(newsList[index]),
    //         itemCount: newsList.length,
    //       );
    //     }
    //   },
    // );
  }
}
