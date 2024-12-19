import 'package:news/news/data/data_source/news_api_data_source.dart';
import 'package:news/news/data/data_source/news_data_source.dart';
import 'package:news/source/data/data_source/source_%20api_data_source.dart';
import 'package:news/source/data/data_source/source_data_source.dart';

class ServicesLocator {
  static SourceDataSource dataSources = SourceAPIDataSource();
  static NewsDataSource newsSources = NewsApiDataSource();
}
