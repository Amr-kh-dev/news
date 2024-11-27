import 'package:http/http.dart';
import 'package:news/source/data/data_source/source_%20api_data_source.dart';
import 'package:news/source/data/model/source.dart';

class SourceRepository {
  final dataSource = SourceAPIDataSource();
  Future<List<Source>> getSource(String categoryId) async {
    return dataSource.getSources(categoryId);
  }
}
