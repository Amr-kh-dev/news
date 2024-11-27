import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:news/source/data/data_source/source_%20api_data_source.dart';
import 'package:news/source/data/model/source.dart';

class SourceViewModel with ChangeNotifier {
  final reposit = SourceAPIDataSource();
  List<Source> sources = [];
  String? errorMessage;
  bool isLoading = false;
  Future<void> getSources(String categoryId) async {
    isLoading = true;
    notifyListeners();
    try {
      sources = await reposit.getSources(categoryId);
    } catch (e) {
      errorMessage = e.toString();
    }
    isLoading = false;
    notifyListeners();
  }
}
