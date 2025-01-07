// import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news/category/view/widget/article_detalis.dart';
import 'package:news/news/data/model/news.dart';
import 'package:news/shared/app_theme.dart';

import 'package:timeago/timeago.dart' as timeago;

class NewsItem extends StatelessWidget {
  NewsItem(this.news, {super.key});

  final News news;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, ArticleDetalis.routeName,
              arguments: news);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.network(news.urlToImage ??
                    'https://www.coalitionrc.com/wp-content/uploads/2017/01/placeholder.jpg')),
            const SizedBox(
              height: 4,
            ),
            Text(
              news.source?.name ?? '',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(color: AppTheme.black),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              news.title ?? '',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w500, color: AppTheme.black),
            ),
            const SizedBox(
              height: 4,
            ),
            Align(
              alignment: AlignmentDirectional.centerEnd,
              child:
                  Text(timeago.format(DateTime.parse(news.publishedAt ?? ""))),
            )
          ],
        ),
      ),
    );
  }
}
