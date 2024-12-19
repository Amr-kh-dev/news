import 'package:news/news/data/model/news.dart';
import 'package:news/shared/widegt/lodeing_indecator.dart';

abstract class NewsStat {}

class NewsIntial extends NewsStat {}

class NewsLoading extends NewsStat {}

class NewsSuccess extends NewsStat {
  NewsSuccess(this.news);
  List<News> news;
}

class NewsError extends NewsStat {
  String error;
  NewsError(this.error);
}
