import 'package:flutter/material.dart';
import 'package:news/api/api_servies.dart';
import 'package:news/newes/news_item.dart';
import 'package:news/widegt/erro_indecator.dart';
import 'package:news/widegt/lodeing_indecator.dart';

class NewsList extends StatelessWidget {
  const NewsList(this.sourceId, {super.key});
  final String sourceId;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: ApiServies.getNews(sourceId),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const LodeingIndecator();
        } else if (snapshot.hasError || snapshot.data?.status != 'ok') {
          return const ErroIndecator();
        } else {
          final newsList = snapshot.data?.articles ?? [];
          return ListView.builder(
            itemBuilder: (_, index) => NewsItem(newsList[index]),
            itemCount: newsList.length,
          );
        }
      },
    );
  }
}
