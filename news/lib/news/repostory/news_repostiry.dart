import 'package:news/news/data/data_source/news_api_data_source.dart';
import 'package:news/news/data/model/news.dart';

class NewsRepository {
  final reposit = NewsApiDataSource();
  Future<List<News>> getNews(String sourceId) async {
    return reposit.getNews(sourceId);
  }
}
