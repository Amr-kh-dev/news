import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news/api/api_constaens.dart';
import 'package:news/category/data/models/category_model.dart';
import 'package:news/news/data/data_source/news_data_source.dart';
import 'package:news/source/data/data_source/source_data_source.dart';
import 'package:news/news/data/model/news.dart';

import 'package:news/news/data/model/news_respons.dart';

class NewsApiDataSource extends NewsDataSource {
  late CategoryModel categoryModel;
  @override
  Future<List<News>> getNews(String sourceId) async {
    final uri = Uri.https(ApiConstaens.baseURL, ApiConstaens.newesEndPoint, {
      'apiKey': ApiConstaens.apiKey,
      'sources': sourceId,
    });
    final response = await http.get(uri);
    final json = jsonDecode(response.body);
    final newsResponse = NewsRespons.fromJson(json);
    if (newsResponse.status == 'ok' && newsResponse.news != null) {
      return newsResponse.news!;
    } else {
      throw Exception('Failed to fetch news');
    }
  }
}
