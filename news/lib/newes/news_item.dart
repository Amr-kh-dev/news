// import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news/app_theme.dart';
import 'package:news/models/news_respons/news_respons/news.dart';
import 'package:timeago/timeago.dart' as timeago;
// import 'package:timeago/timeago.dart' as timeago;

class NewsItem extends StatelessWidget {
  NewsItem(this.news, {super.key});
  final fifteenAgo = DateTime.now().subtract(const Duration(minutes: 15));
  final News news;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
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
            style: Theme.of(context)
                .textTheme
                .titleSmall
                ?.copyWith(fontWeight: FontWeight.w500, color: AppTheme.black),
          ),
          const SizedBox(
            height: 4,
          ),
          const Align(
            alignment: AlignmentDirectional.centerEnd,
            child: Text(''),
          )
        ],
      ),
    );
  }
}
