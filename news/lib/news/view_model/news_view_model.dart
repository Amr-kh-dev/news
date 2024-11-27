import 'package:flutter/material.dart';
import 'package:news/news/data/data_source/news_api_data_source.dart';
import 'package:news/news/data/model/news.dart';
import 'package:news/news/repostory/news_repostiry.dart';

class NewsViewModel with ChangeNotifier {
  final reposit = NewsRepository();
  List<News> news = [];
  String? errorMessage;
  bool isLoding = false;
  Future<void> getNews(String sourceId) async {
    isLoding = true;
    notifyListeners();
    try {
      print('test');
      news = await reposit.getNews(sourceId);
    } catch (e) {
      errorMessage = 'Failed to fetch news: $e';
    }
    isLoding = false;
    notifyListeners();
  }
}
