import 'package:news/news/data/data_source/news_data_source.dart';
import 'package:news/news/data/model/news.dart';

class NewsFireBaseDataSource extends NewsDataSource {
  @override
  Future<List<News>> getNews(String sourceId) async {
    return [];
  }
}
