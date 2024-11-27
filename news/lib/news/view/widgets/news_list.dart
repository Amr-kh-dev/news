import 'package:flutter/material.dart';
import 'package:news/api/api_servies.dart';
import 'package:news/news/view/widgets/news_item.dart';
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
  Widget build(BuildContext context) {
    viewModel.getNews(widget.sourceId);
    return ChangeNotifierProvider(
        create: (_) => viewModel,
        child: Consumer<NewsViewModel>(builder: (_, viewModel, __) {
          if (viewModel.isLoding) {
            print('loding');
            return const LodeingIndecator();
          } else if (viewModel.errorMessage != null) {
            print('error message');
            return ErroIndecator(viewModel.errorMessage);
          } else {
            print('error message');
            final newsList = viewModel.news;
            if (newsList.isEmpty) {
              return const Text('No news found');
            } else {
              return ListView.builder(
                itemBuilder: (_, index) => NewsItem(newsList[index]),
                itemCount: newsList.length,
              );
            }
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
