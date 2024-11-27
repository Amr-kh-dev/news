import 'news.dart';

class NewsRespons {
  String? status;
  int? totalResults;
  List<News>? news;

  NewsRespons({this.status, this.totalResults, this.news});

  factory NewsRespons.fromJson(Map<String, dynamic> json) => NewsRespons(
        status: json['status'] as String?,
        totalResults: json['totalResults'] as int?,
        news: (json['articles'] as List<dynamic>?)
            ?.map((e) => News.fromJson(e as Map<String, dynamic>))
            .toList(),
      );
}
