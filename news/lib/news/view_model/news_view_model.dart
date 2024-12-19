import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/news/data/data_source/news_api_data_source.dart';
import 'package:news/news/data/data_source/news_data_source.dart';

import 'package:news/news/data/model/news.dart';
import 'package:news/news/repostory/news_repostiry.dart';
import 'package:news/news/view_model/news_stat.dart';
import 'package:news/shared/Services_locator.dart';

class NewsViewModel extends Cubit<NewsStat> {
  late final NewsRepository reposit;
  NewsViewModel() : super(NewsIntial()) {
    reposit = NewsRepository(ServicesLocator.newsSources);
  }

  Future<void> getNews(String sourceId) async {
    emit(NewsLoading());
    try {
      print('test');
      final news = await reposit.getNews(sourceId);
      emit(NewsSuccess(news));
    } catch (e) {
      emit(NewsError(e.toString()));
    }
  }
}
