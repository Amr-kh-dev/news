import 'package:flutter/material.dart';
import 'package:news/news/data/model/news.dart';
import 'package:news/shared/app_theme.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:url_launcher/url_launcher.dart';

class ArticleDetalis extends StatelessWidget {
  static const String routeName = "article";
  const ArticleDetalis({super.key});

  @override
  Widget build(BuildContext context) {
    final news = ModalRoute.of(context)!.settings.arguments as News;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage('assets/image/pattern.png'),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(news.source!.name ?? "article"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 15,
            ),
            ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.network(news.urlToImage ??
                    'https://www.coalitionrc.com/wp-content/uploads/2017/01/placeholder.jpg')),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    news.source?.name ?? '',
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(color: AppTheme.black),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    news.title ?? '',
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w900,
                        color: AppTheme.black,
                        fontSize: 25),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Text(
                        timeago.format(DateTime.parse(news.publishedAt ?? ""))),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    news.content ?? '',
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w900,
                        color: AppTheme.black,
                        fontSize: 25),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  InkWell(
                    onTap: () => _launchUrl(news.url ?? ""),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'view full article',
                          style: TextStyle(fontSize: 25),
                        ),
                        Icon(
                          Icons.open_in_new,
                          size: 25,
                          color: AppTheme.blue,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _launchUrl(String url) async {
    final Uri _url = Uri.parse(url);

    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}
