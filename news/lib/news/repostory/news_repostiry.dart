import 'package:news/news/data/data_source/news_data_source.dart';
import 'package:news/news/data/model/news.dart';

class NewsRepository {
  final NewsDataSource dataSource;
  const NewsRepository(this.dataSource);
  Future<List<News>> getNews(String sourceId) async {
    return dataSource.getNews(sourceId);
  }
}
