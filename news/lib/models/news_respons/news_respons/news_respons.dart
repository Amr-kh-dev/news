import 'news.dart';

class NewsRespons {
  String? status;
  int? totalResults;
  List<News>? articles;

  NewsRespons({this.status, this.totalResults, this.articles});

  factory NewsRespons.fromJson(Map<String, dynamic> json) => NewsRespons(
        status: json['status'] as String?,
        totalResults: json['totalResults'] as int?,
        articles: (json['articles'] as List<dynamic>?)
            ?.map((e) => News.fromJson(e as Map<String, dynamic>))
            .toList(),
      );
}
