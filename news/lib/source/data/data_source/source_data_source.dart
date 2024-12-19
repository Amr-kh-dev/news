import 'package:news/source/data/model/source.dart';

abstract class SourceDataSource {
  Future<List<Source>> getSources(String categoryId);
}
